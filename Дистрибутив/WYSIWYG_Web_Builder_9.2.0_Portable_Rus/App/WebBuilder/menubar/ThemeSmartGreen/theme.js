var cmThemeSmartGreenBase = '.';

try
{
	if (myThemeSmartGreenBase)
	{
		cmThemeSmartGreenBase = myThemeSmartGreenBase;
	}
}
catch (e)
{
}

var cmThemeSmartGreen =
{
  	    mainFolderLeft: '<div style="width: 21px; height: 20px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 11px; height: 20px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 21px; height: 20px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 11px; height: 20px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 19px; height: 20px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 14px; height: 20px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 19px; height: 20px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 14px; height: 20px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeSmartGreenHSplit = [_cmNoClick, '<td  class="ThemeSmartGreenMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeSmartGreenMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeSmartGreenMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeSmartGreenMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="22" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeSmartGreenHorizontalSplit">' +
                           '<div class="themeSpacerDiv" style=" width: 1px; height: 1px" /></td></tr></table></div>'];

var cmThemeSmartGreenMainHSplit = [_cmNoClick, '<td  class="ThemeSmartGreenMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeSmartGreenMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeSmartGreenMainSplitRight"><div></div></td>'
		                           ];    
 
     