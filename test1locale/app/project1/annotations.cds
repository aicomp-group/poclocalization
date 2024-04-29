using MaterialService as service from '../../srv/material-service';


annotate service.material with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : name,            
        },
        {
            $Type : 'UI.DataField',
            Value : plant,
            Label : 'plant',
        },
    ]
);
annotate service.material with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'general',
            ID : 'general',
            Target : '@UI.FieldGroup#general',
        },
    ],
    UI.FieldGroup #general : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : name,                
            },{
                $Type : 'UI.DataField',
                Value : plant,
                Label : 'plant',
            },],
    }
);
annotate service.material with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'translations',
            ID : 'translations',
            Target : 'texts/@UI.LineItem#translations',
        },
    ]
);
annotate service.material.texts with @(
    UI.LineItem #translations : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : locale,
        },{
            $Type : 'UI.DataField',
            Value : name,
        },]
);

////////////////////////////////////////////////////////////
//
//  Draft for Localized Data
//
annotate my.testlocale.Material with  @fiori.draft.enabled;
annotate service.material with @odata.draft.enabled;

annotate service.material.texts with {
    ID       @UI.Hidden;    
};