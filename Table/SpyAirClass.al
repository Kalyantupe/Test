page 50111 SpyAirClassCard
{
    PageType = Card;
    SourceTable = SpyAirClass;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(AirClassCode;AirClassCode)
                {
                    Caption='Air Class';
                }
                field(Description;Description)
                {
                    Caption='Description';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}
page 50110 SpyAirClassList
{
    PageType = List;
    SourceTable = SpyAirClass;
    UsageCategory=Lists;
    ApplicationArea=all;
    CardPageId=SpyAirClassCard;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(AirClassCode;AirClassCode)
                {
                    Caption='Air Class';
                }
                field(Description;Description)
                {
                    Caption='Description';
                }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}
table 50140 SpyAirClass
{
    DataClassification = ToBeClassified;
    Caption='Spy Air Class';
    
    fields
    {
        field(1;AirClassCode;Text[20])
        {
            Caption = 'Air Class Code';
            DataClassification = ToBeClassified;
        }
           field(2;Description;Text[60])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK;AirClassCode)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}