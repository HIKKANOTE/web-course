/*
  edit cmThemeShadedBlueBase it must be the root of the theme's images 
*/

var cmThemeShadedBlueBase = '.';

// the follow block allows user to re-define theme base directory
// before it is loaded.
try
{
	if (myThemeShadedBlueBase)
	{
		cmThemeShadedBlueBase = myThemeShadedBlueBase;
	}
}
catch (e)
{
}

var cmThemeShadedBlue =
{
  	    mainFolderLeft: '<div style="width: 12px; height: 23px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 20px; height: 23px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 12px; height: 23px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 20px; height: 23px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeShadedBlueHSplit = [_cmNoClick, '<td  class="ThemeShadedBlueMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeShadedBlueMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeShadedBlueMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeShadedBlueMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="23" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeShadedBlueHorizontalSplit">' +
                           '<div class="themeSpacerDiv" style=" width: 1px; height: 1px" /></td></tr></table></div>'];

var cmThemeShadedBlueMainHSplit = [_cmNoClick, '<td  class="ThemeShadedBlueMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeShadedBlueMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeShadedBlueMainSplitRight"><div></div></td>'
		                           ];    
 
     