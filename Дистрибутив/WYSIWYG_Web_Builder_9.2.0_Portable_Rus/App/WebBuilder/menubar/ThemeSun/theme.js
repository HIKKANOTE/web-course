/*
  edit cmThemeSunBase it must be the root of the theme's images 
*/

var cmThemeSunBase = '.';

// the follow block allows user to re-define theme base directory
// before it is loaded.
try
{
	if (myThemeSunBase)
	{
		cmThemeSunBase = myThemeSunBase;
	}
}
catch (e)
{
}

var cmThemeSun =
{
  	    mainFolderLeft: '<div style="width: 11px; height: 21px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 19px; height: 21px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 11px; height: 21px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 19px; height: 21px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 15px; height: 23px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeSunHSplit = [_cmNoClick, '<td  class="ThemeSunMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeSunMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeSunMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeSunMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="23" width="0" ' +
                            ' cellspacing="0"><tr><td class="ThemeSunHorizontalSplit">' +
                           '<div class="themeSpacerDiv" style=" width: 1px; height: 1px" /></td></tr></table></div>'];

var cmThemeSunMainHSplit = [_cmNoClick, '<td  class="ThemeSunMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeSunMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeSunMainSplitRight"><div></div></td>'
		                           ];    
 
     