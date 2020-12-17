var cmThemeOfficeBlackBase = '.';

try
{
	if (myThemeOfficeBlackBase)
	{
		cmThemeOfficeBlackBase = myThemeOfficeBlackBase;
	}
}
catch (e)
{
}

var cmThemeOfficeBlack =
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

var cmThemeOfficeBlackHSplit = [_cmNoClick, '<td  class="ThemeOfficeBlackMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeOfficeBlackMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeOfficeBlackMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeOfficeBlackMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="19" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeOfficeBlackHorizontalSplit">' +
                           '|</td></tr></table></div>'];

var cmThemeOfficeBlackMainHSplit = [_cmNoClick, '<td  class="ThemeOfficeBlackMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeOfficeBlackMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeOfficeBlackMainSplitRight"><div></div></td>'
		                           ];    
 
     