$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QFormBuilder INHERIT QAbstractFormBuilder

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD clearPluginPaths
   METHOD customWidgets
   METHOD pluginPaths
   METHOD setPluginPath

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFormBuilder ()
*/
HB_FUNC_STATIC( QFORMBUILDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFormBuilder * o = new QFormBuilder ();
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addPluginPath ( const QString & pluginPath )
*/
HB_FUNC_STATIC( QFORMBUILDER_ADDPLUGINPATH )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->addPluginPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearPluginPaths ()
*/
HB_FUNC_STATIC( QFORMBUILDER_CLEARPLUGINPATHS )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearPluginPaths ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QDesignerCustomWidgetInterface *> customWidgets () const
*/
HB_FUNC_STATIC( QFORMBUILDER_CUSTOMWIDGETS )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QDesignerCustomWidgetInterface *> list = obj->customWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDESIGNERCUSTOMWIDGETINTERFACE" );
    #else
    pDynSym = hb_dynsymFindName( "QDESIGNERCUSTOMWIDGETINTERFACE" );
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
        hb_itemPutPtr( pItem, (QDesignerCustomWidgetInterface *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QStringList pluginPaths () const
*/
HB_FUNC_STATIC( QFORMBUILDER_PLUGINPATHS )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->pluginPaths () );
  }
}

/*
void setPluginPath ( const QStringList & pluginPaths )
*/
HB_FUNC_STATIC( QFORMBUILDER_SETPLUGINPATH )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setPluginPath ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
