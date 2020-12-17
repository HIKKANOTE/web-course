
// directory of where all the images are
var cmThemeSteelBase = './ThemeSteel/';

// the follow block allows user to re-define theme base directory
// before it is loaded.
try
{
	if (myThemeSteelBase)
	{
		cmThemeSteelBase = myThemeSteelBase;
	}
}
catch (e)
{
}

var cmThemeSteel =
{
	prefix:	'ThemeSteel',

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

	subMenuHeader: '<div class="ThemeSteelSubMenuShadow"></div><div class="ThemeSteelSubMenuBorder">',
	subMenuFooter: '</div>',

	// move the first lvl of vbr submenu up a bit
	offsetVMainAdjust:	[0, -2],
	// also for the other lvls
	offsetSubAdjust:	[0, -2]

	// rest use default settings
};

// for sub menu horizontal split
var cmThemeSteelHSplit = [_cmNoClick, '<td colspan="3" class="ThemeSteelMenuSplit"><div class="ThemeSteelMenuSplit"></div></td>'];
// for vertical main menu horizontal split
var cmThemeSteelMainHSplit = [_cmNoClick, '<td colspan="3" class="ThemeSteelMenuSplit"><div class="ThemeSteelMenuSplit"></div></td>'];
// for horizontal main menu vertical split
var cmThemeSteelMainVSplit = [_cmNoClick, '|'];

/* IE can't do negative margin on tables */
/*@cc_on
	cmThemeSteel.subMenuHeader = '<div class="ThemeSteelSubMenuShadow" style="background-color: #aaaaaa;filter: alpha(opacity=50);"></div><div class="ThemeSteelSubMenuBorder">';
@*/
