var cmThemeBlueGreenBase = '.';

try
{
   if (myThemeBlueGreenBase)
   {
      cmThemeBlueGreenBase = myThemeBlueGreenBase;
   }
}
catch (e)
{
}

var cmThemeBlueGreen =
{
   mainFolderLeft: '<div style="width: 14px; height: 28px" class="themeSpacerDiv" />',
   mainFolderRight: '<div style="width: 11px; height: 28px" class="themeSpacerDiv" />',
   mainItemLeft: '<div style="width: 14px; height: 28px" class="themeSpacerDiv" />',
   mainItemRight: '<div style="width: 11px; height: 28px" class="themeSpacerDiv" />',
   folderLeft: '<div style="width: 1px; height: 28px" class="themeSpacerDiv" />',
   folderRight: '<div style="width: 4px; height: 28px" class="themeSpacerDiv" />',
   itemLeft: '<div style="width: 1px; height: 28px" class="themeSpacerDiv" />',
   itemRight: '<div style="width: 4px; height: 28px" class="themeSpacerDiv" />',
   mainSpacing: 0,
   subSpacing: 0,
   delay: 100
};

var cmThemeBlueGreenHSplit = [_cmNoClick, '<td  class="ThemeBlueGreenMenuSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeBlueGreenMenuSplitText"><div></div></td>' +
					                          '<td  class="ThemeBlueGreenMenuSplitRight"><div></div></td>'
		                         ];

var cmThemeBlueGreenMainVSplit = [_cmNoClick, '<div>' +
                            '<table height="30" width="10" ' +
                            ' cellspacing="0"><tr><td class="ThemeBlueGreenHorizontalSplit">' +
                           '|</td></tr></table></div>'];

var cmThemeBlueGreenMainHSplit = [_cmNoClick, '<td  class="ThemeBlueGreenMainSplitLeft"><div></div></td>' +
					                          '<td  class="ThemeBlueGreenMainSplitText"><div></div></td>' +
					                          '<td  class="ThemeBlueGreenMainSplitRight"><div></div></td>'
		                           ];    
 
     