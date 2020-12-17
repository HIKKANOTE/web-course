
// directory of where all the images are
var cmThemeLightGreyBase = './ThemeLightGrey/';

// the follow block allows user to re-define theme base directory
// before it is loaded.
try
{
	if (myThemeLightGreyBase)
	{
		cmThemeLightGreyBase = myThemeLightGreyBase;
	}
}
catch (e)
{
}

var cmThemeLightGrey =
{
	prefix:	'ThemeLightGrey',

  	// HTML code to the left of the folder item
  	mainFolderLeft: '',
  	// HTML code to the right of the folder item
  	mainFolderRight: '',
	// HTML code to the left of the regular item
	mainItemLeft: '',
	// HTML code to the right of the regular item
	mainItemRight: '',

	// sub menu display attributes

	// HTML code to the left of the folder item
	folderLeft: '',
	// HTML code to the right of the folder item
	folderRight: '',
	// HTML code to the left of the regular item
	itemLeft: '',
	// HTML code to the right of the regular item
	itemRight: '',
	// cell spacing for main menu
	mainSpacing: 0,
	// cell spacing for sub menus
	subSpacing: 0,

	subMenuHeader: '<div class="ThemeLightGreySubMenuShadow"></div><div class="ThemeLightGreySubMenuBorder">',
	subMenuFooter: '</div>',

	// move the first lvl of vbr submenu up a bit
	offsetVMainAdjust:	[0, -2],
	// also for the other lvls
	offsetSubAdjust:	[0, -2]

	// rest use default settings
};

// for sub menu horizontal split
var cmThemeLightGreyHSplit = [_cmNoClick, '<td colspan="3" class="ThemeLightGreyMenuSplit"><div class="ThemeLightGreyMenuSplit"></div></td>'];
// for vertical main menu horizontal split
var cmThemeLightGreyMainHSplit = [_cmNoClick, '<td colspan="3" class="ThemeLightGreyMenuSplit"><div class="ThemeLightGreyMenuSplit"></div></td>'];
// for horizontal main menu vertical split
var cmThemeLightGreyMainVSplit = [_cmNoClick, '|'];

/* IE can't do negative margin on tables */
/*@cc_on
	cmThemeLightGrey.subMenuHeader = '<div class="ThemeLightGreySubMenuShadow" style="background-color: #aaaaaa;filter: alpha(opacity=50);"></div><div class="ThemeLightGreySubMenuBorder">';
@*/
