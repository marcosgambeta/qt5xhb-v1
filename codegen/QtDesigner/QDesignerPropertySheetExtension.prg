$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDesignerPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD hasReset
   METHOD indexOf
   METHOD isAttribute
   METHOD isChanged
   METHOD isVisible
   METHOD property
   METHOD propertyGroup
   METHOD propertyName
   METHOD reset
   METHOD setAttribute
   METHOD setChanged
   METHOD setProperty
   METHOD setPropertyGroup
   METHOD setVisible

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

#include <QVariant>

$deleteMethod

/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_COUNT )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual bool hasReset ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_HASRESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->hasReset ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int indexOf ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_INDEXOF )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RINT( obj->indexOf ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isAttribute ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isAttribute ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isChanged ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isChanged ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isVisible ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isVisible ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant property ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->property ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString propertyGroup ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->propertyGroup ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString propertyName ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYNAME )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->propertyName ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool reset ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_RESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->reset ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setAttribute ( int index, bool attribute ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setAttribute ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setChanged ( int index, bool changed ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setChanged ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setProperty ( int index, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setProperty ( PINT(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setPropertyGroup ( int index, const QString & group ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setPropertyGroup ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setVisible ( int index, bool visible ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setVisible ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
