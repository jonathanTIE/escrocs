#include "localization/least_square_helpers.h"

#include <math.h>

/**
 * Note: all formulas are computed using SymPy.
 * They implement basic least square solving Y = X.P
 * Where Y = (x0, y0, ...) and X = ((1, 0, xp0, -yp0), (0, 1, yp0, xp0), ...)
 * And P = (x, y, cos_t, sin_t) is the pose where cos(theta) and sin(theta) are treated as independent variables,
 * to make the system linear.
 * Linear regression can be computed with: P = (X.t X)-1 X Y
 * The mumbo-jumbo of equations that follows is simply the expanded expression of this matricial computation.
 */
static void least_square_fit_two_beacons(point_t actual_positions[], point_t relative_positions[], pose_t *result)
{
    float x0 = actual_positions[0].x;
    float y0 = actual_positions[0].y;
    float x1 = actual_positions[1].x;
    float y1 = actual_positions[1].y;
    float xp0 = relative_positions[0].x;
    float yp0 = relative_positions[0].y;
    float xp1 = relative_positions[1].x;
    float yp1 = relative_positions[1].y;

    result->x = x0*(xp0*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) - yp0*(yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + (xp0*xp0 + xp1*xp1 + yp0*yp0 + yp1*yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + x1*(xp1*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) - yp1*(yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + (xp0*xp0 + xp1*xp1 + yp0*yp0 + yp1*yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y0*(xp0*(yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + yp0*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y1*(xp1*(yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + yp1*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1));
    result->y = x0*(xp0*(-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) - yp0*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + x1*(xp1*(-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) - yp1*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y0*(xp0*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + yp0*(-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + (xp0*xp0 + xp1*xp1 + yp0*yp0 + yp1*yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y1*(xp1*(-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + yp1*(-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1) + (xp0*xp0 + xp1*xp1 + yp0*yp0 + yp1*yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1));
    float cos_theta = x0*(4*xp0/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + x1*(4*xp1/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y0*(4*yp0/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y1*(4*yp1/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-yp0 - yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1));
    float sin_theta = x0*(-4*yp0/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + x1*(-4*yp1/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (yp0 + yp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y0*(4*xp0/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1)) + y1*(4*xp1/(2*xp0*xp0 - 4*xp0*xp1 + 2*xp1*xp1 + 2*yp0*yp0 - 4*yp0*yp1 + 2*yp1*yp1) + (-xp0 - xp1)/(xp0*xp0 - 2*xp0*xp1 + xp1*xp1 + yp0*yp0 - 2*yp0*yp1 + yp1*yp1));    
    result->theta = atan2f(sin_theta, cos_theta);
}

static void least_square_fit_three_beacons(point_t actual_positions[], point_t relative_positions[], pose_t *result)
{
    float x0 = actual_positions[0].x;
    float y0 = actual_positions[0].y;
    float x1 = actual_positions[1].x;
    float y1 = actual_positions[1].y;
    float x2 = actual_positions[2].x;
    float y2 = actual_positions[2].y;
    float xp0 = relative_positions[0].x;
    float yp0 = relative_positions[0].y;
    float xp1 = relative_positions[1].x;
    float yp1 = relative_positions[1].y;
    float xp2 = relative_positions[2].x;
    float yp2 = relative_positions[2].y;

    result->x = x0*(xp0*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp0*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x1*(xp1*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp1*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x2*(xp2*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp2*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y0*(xp0*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp0*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y1*(xp1*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp1*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y2*(xp2*(yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp2*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2));
    result->y = x0*(xp0*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp0*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x1*(xp1*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp1*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x2*(xp2*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) - yp2*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y0*(xp0*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp0*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y1*(xp1*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp1*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y2*(xp2*(-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + yp2*(-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2) + (xp0*xp0 + xp1*xp1 + xp2*xp2 + yp0*yp0 + yp1*yp1 + yp2*yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2));
    float cos_theta = x0*(9*xp0/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x1*(9*xp1/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x2*(9*xp2/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y0*(9*yp0/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y1*(9*yp1/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y2*(9*yp2/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-yp0 - yp1 - yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2));
    float sin_theta = x0*(-9*yp0/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x1*(-9*yp1/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + x2*(-9*yp2/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (yp0 + yp1 + yp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y0*(9*xp0/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y1*(9*xp1/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2)) + y2*(9*xp2/(6*xp0*xp0 - 6*xp0*xp1 - 6*xp0*xp2 + 6*xp1*xp1 - 6*xp1*xp2 + 6*xp2*xp2 + 6*yp0*yp0 - 6*yp0*yp1 - 6*yp0*yp2 + 6*yp1*yp1 - 6*yp1*yp2 + 6*yp2*yp2) + (-xp0 - xp1 - xp2)/(2*xp0*xp0 - 2*xp0*xp1 - 2*xp0*xp2 + 2*xp1*xp1 - 2*xp1*xp2 + 2*xp2*xp2 + 2*yp0*yp0 - 2*yp0*yp1 - 2*yp0*yp2 + 2*yp1*yp1 - 2*yp1*yp2 + 2*yp2*yp2));
    result->theta = atan2f(sin_theta, cos_theta);
}

pose_t find_pose_from_beacons(point_t actual_positions[], point_t relative_positions[], size_t number_of_beacons, pose_t estimated_pose)
{
    pose_t result;
    if (number_of_beacons < 2) {
        return estimated_pose;
    } else if (number_of_beacons == 2) {
        least_square_fit_two_beacons(actual_positions, relative_positions, &result);
        return result;
    } else {
        least_square_fit_three_beacons(actual_positions, relative_positions, &result);
        return result;
    }
}
