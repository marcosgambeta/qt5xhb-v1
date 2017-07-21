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
$constructor=|new|

$deleteMethod

/*
void addPluginPath ( const QString & pluginPath )
*/
$method=|void|addPluginPath|const QString &

/*
void clearPluginPaths ()
*/
$method=|void|clearPluginPaths|

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
$method=|QStringList|pluginPaths|

/*
void setPluginPath ( const QStringList & pluginPaths )
*/
$method=|void|setPluginPath|const QStringList &

#pragma ENDDUMP
