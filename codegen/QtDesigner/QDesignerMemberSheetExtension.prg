$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature

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
virtual int count () const = 0
*/
$method=|int|count|

/*
virtual QString declaredInClass ( int index ) const = 0
*/
$method=|QString|declaredInClass|int

/*
virtual int indexOf ( const QString & name ) const = 0
*/
$method=|int|indexOf|const QString &

/*
virtual bool inheritedFromWidget ( int index ) const = 0
*/
$method=|bool|inheritedFromWidget|int

/*
virtual bool isSignal ( int index ) const = 0
*/
$method=|bool|isSignal|int

/*
virtual bool isSlot ( int index ) const = 0
*/
$method=|bool|isSlot|int

/*
virtual bool isVisible ( int index ) const = 0
*/
$method=|bool|isVisible|int

/*
virtual QString memberGroup ( int index ) const = 0
*/
$method=|QString|memberGroup|int

/*
virtual QString memberName ( int index ) const = 0
*/
$method=|QString|memberName|int

/*
virtual QList<QByteArray> parameterNames ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERNAMES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QList<QByteArray> list = obj->parameterNames ( PINT(1) );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QBYTEARRAY" );
      #else
      pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QList<QByteArray> parameterTypes ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERTYPES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QList<QByteArray> list = obj->parameterTypes ( PINT(1) );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QBYTEARRAY" );
      #else
      pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setMemberGroup ( int index, const QString & group ) = 0
*/
$method=|void|setMemberGroup|int,const QString &

/*
virtual void setVisible ( int index, bool visible ) = 0
*/
$method=|void|setVisible|int,bool

/*
virtual QString signature ( int index ) const = 0
*/
$method=|QString|signature|int

$extraMethods

#pragma ENDDUMP
