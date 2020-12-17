var cmThemeFancyBase = '.';

try
{
	if (myThemeFancyBase)
	{
		cmThemeFancyBase = myThemeFancyBase;
	}
}
catch (e)
{
}

var cmThemeFancy =
{
  	    mainFolderLeft: '<div style="width: 14px; height: 28px" class="themeSpacerDiv" />',
        mainFolderRight: '<div style="width: 11px; height: 28px" class="themeSpacerDiv" />',
        mainItemLeft: '<div style="width: 14px; height: 28px" class="themeSpacerDiv" />',
        mainItemRight: '<div style="width: 11px; height: 28px" class="themeSpacerDiv" />',
        folderLeft: '<div style="width: 24px; height: 23px" class="themeSpacerDiv" />',
        folderRight: '<div style="width: 14px; height: 23px" class="themeSpacerDiv" />',
        itemLeft: '<div style="width: 24px; height: 23px" class="themeSpacerDiv" />',
        itemRight: '<div style="width: 14px; height: 23px" class="themeSpacerDiv" />',
        mainSpacing: 0,
        subSpacing: 0,
        delay: 100
};

var cmThemeFancyHSplit = [_cmNoClick, '<td  class="ThemeFancyMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeFancyMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeFancyMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeFancyMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="30" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeFancyHorizontalSplit">' +
                           '|</td></tr></table></div>'];

var cmThemeFancyMainHSplit = [_cmNoClick, '<td  class="ThemeFancyMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeFancyMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeFancyMainSplitRight"><div></div></td>'
		                           ];    
 
     