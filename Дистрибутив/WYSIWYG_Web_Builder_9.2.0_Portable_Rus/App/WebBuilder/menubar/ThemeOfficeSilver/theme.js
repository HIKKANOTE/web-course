/*
  edit cmThemeOfficeSilverBase it must be the root of the theme's images 
*/

var cmThemeOfficeSilverBase = '.';

// the follow block allows user to re-define theme base directory
// before it is loaded.
try
{
	if (myThemeOfficeSilverBase)
	{
		cmThemeOfficeSilverBase = myThemeOfficeSilverBase;
	}
}
catch (e)
{
}

var cmThemeOfficeSilver =
{
  	    mainFolderLeft: '<div style="width: 12px; height: 17px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 11px; height: 17px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 12px; height: 17px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 11px; height: 17px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 24px; height: 18px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 19px; height: 18px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 24px; height: 18px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 19px; height: 18px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeOfficeSilverHSplit = [_cmNoClick, '<td  class="ThemeOfficeSilverMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeOfficeSilverMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeOfficeSilverMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeOfficeSilverMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="19" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeOfficeSilverHorizontalSplit">' +
                           '|</td></tr></table></div>'];

var cmThemeOfficeSilverMainHSplit = [_cmNoClick, '<td  class="ThemeOfficeSilverMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeOfficeSilverMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeOfficeSilverMainSplitRight"><div></div></td>'
		                           ];    
 
     