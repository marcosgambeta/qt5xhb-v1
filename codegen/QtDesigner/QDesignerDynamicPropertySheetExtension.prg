$header

#include "hbclass.ch"

CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQVARIANT(2) )
    {
      RINT( obj->addDynamicProperty ( PQSTRING(1), *PQVARIANT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_CANADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->canAddDynamicProperty ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool dynamicPropertiesAllowed () const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DYNAMICPROPERTIESALLOWED )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->dynamicPropertiesAllowed () );
  }
}

/*
virtual bool isDynamicProperty ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ISDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isDynamicProperty ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool removeDynamicProperty ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_REMOVEDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->removeDynamicProperty ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
