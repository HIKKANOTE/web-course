var cmThemeShadedBeigeBase = '.';

try
{
	if (myThemeShadedBeigeBase)
	{
		cmThemeShadedBeigeBase = myThemeShadedBeigeBase;
	}
}
catch (e)
{
}

var cmThemeShadedBeige =
{
  	    mainFolderLeft: '<div style="width: 15px; height: 25px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 20px; height: 25px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 15px; height: 25px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 20px; height: 25px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 19px; height: 18px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 14px; height: 18px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 19px; height: 18px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 14px; height: 18px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeShadedBeigeHSplit = [_cmNoClick, '<td  class="ThemeShadedBeigeMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeShadedBeigeMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeShadedBeigeMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeShadedBeigeMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="25" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeShadedBeigeHorizontalSplit">' +
                           '<div class="themeSpacerDiv" style=" width: 1px; height: 1px" /></td></tr></table></div>'];

var cmThemeShadedBeigeMainHSplit = [_cmNoClick, '<td  class="ThemeShadedBeigeMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeShadedBeigeMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeShadedBeigeMainSplitRight"><div></div></td>'
		                           ];    
 
     