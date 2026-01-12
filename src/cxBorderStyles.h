#ifndef __CXBORDERSTYLES_H__
#define __CXBORDERSTYLES_H__

/** 
 * \brief cxBorderStyles.h - defines border styles used by
 *  cxWindow and all its derivitives.
 *
 * Copyright (C) 2007 Michael H. Kinney
 *
 * \author $Author: erico $
 * \version $Revision: 1.7 $
 * \date $Date: 2007/12/04 00:23:46 $
 *
 * Date     User    Description
 *
 */

/**
* \enum eBorderStyle Defines border styles used by cxWindow and its derivitives:
* eBS_NOBORDER: This signifies windows without a border
* eBS_SINGLE_LINE: This signifies a single-line border
*/
enum eBorderStyle {
   eBS_NOBORDER = 0,
   eBS_SINGLE_LINE, // Use a single line for the border
   eBS_DOUBLE_LINE, // Use a double line for the border (few terminals support this)
   eBS_SPACE        // Use spaces for the border
};

#endif
