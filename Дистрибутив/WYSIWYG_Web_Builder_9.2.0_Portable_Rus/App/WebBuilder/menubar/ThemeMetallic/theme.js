var cmThemeMetallicBase = '.';

try
{
	if (myThemeMetallicBase)
	{
		cmThemeMetallicBase = myThemeMetallicBase;
	}
}
catch (e)
{
}

var cmThemeMetallic =
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

var cmThemeMetallicHSplit = [_cmNoClick, '<td  class="ThemeMetallicMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeMetallicMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeMetallicMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeMetallicMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="23" width="0" ' +
                            ' cellspacing="0"><tr><td class="ThemeMetallicHorizontalSplit">' +
                           '<div class="themeSpacerDiv" style=" width: 1px; height: 1px" /></td></tr></table></div>'];

var cmThemeMetallicMainHSplit = [_cmNoClick, '<td  class="ThemeMetallicMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeMetallicMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeMetallicMainSplitRight"><div></div></td>'
		                           ];    
 
     