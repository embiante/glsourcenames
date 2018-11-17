﻿pageextension 70009201 pageextension70009201 extends "General Ledger Entries" 
{
  // version NAVW111.0,GLSN10.0

  layout
  {
    addafter("Bal. Account No.")
    {
      field("O4N Source Type";"Source Type")
      {
        AccessByPermission=TableData "O4N GL SN"=R;
        ApplicationArea=Basic,Suite;
        ToolTip='Specifies the type of the master record associated with this entry';
      }
      field("O4N Source No.";"Source No.")
      {
        AccessByPermission=TableData "O4N GL SN"=R;
        ApplicationArea=Basic,Suite;
        ToolTip='Specifies the number of the master record associated with this entry';
        Visible=false;
      }
      field("O4N Source Name";"O4N Source Name")
      {
        AccessByPermission=TableData "O4N GL SN"=R;
        ApplicationArea=Basic,Suite;
        ToolTip='Specifies the name of the master record associated with this entry';
      }
    }
  }
  actions
  {
    addafter("Value Entries")
    {
      action("O4N SourceCard")
      {
        AccessByPermission=TableData "O4N GL SN"=R;
        ApplicationArea=Basic,Suite;
        Caption='Source Card';
        Image=Card;
        RunObject=Codeunit "O4N GL Show Source Card";
        ToolTip='Show the card for the master record defined as the source for this entry';
      }
    }
  }
}


