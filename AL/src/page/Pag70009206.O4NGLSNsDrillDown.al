﻿page 70009206 "O4N GL SNs DrillDown"
{

  Caption='G/L Source Names DrillDown';
  Editable=false;
  PageType=List;
  SourceTable="O4N GL SN";

  layout
  {
  }

  actions
  {
  }

  trigger OnOpenPage();
  begin
    if FINDFIRST then
      GLShowSourceCard.ShowSourceNameCard(Rec);
    ERROR('');
  end;

  var
    GLShowSourceCard : Codeunit "O4N GL Show Source Card";
}


