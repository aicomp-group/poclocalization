using MaterialService as service from '../../srv/material-service';
using from '../../db/test1locale-schema';

////////////////////////////////////////////////////////////
//
//  Draft for Localized Data
//
annotate my.testlocale.Flutes with  @fiori.draft.enabled;
annotate service.flutes with @odata.draft.enabled;

annotate service.flutes with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : code,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
        },
    ]
);
annotate service.flutes with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General',
            ID : 'General',
            Target : '@UI.FieldGroup#General',
        },
    ],
    UI.FieldGroup #General : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : code,
            },{
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : name,
            },],
    }
);
annotate service.flutes with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Translations',
            ID : 'Translations',
            Target : 'texts/@UI.LineItem#Translations',
        },],
    UI.FieldGroup #Translations : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.flutes.texts with @(
    UI.LineItem #Translations : [
        {
            $Type : 'UI.DataField',
            Value : locale,
        },{
            $Type : 'UI.DataField',
            Value : name,
        },{
            $Type : 'UI.DataField',
            Value : descr,
        },]
);
