/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QFormBuilder INHERIT QAbstractFormBuilder

   DATA class_id INIT Class_Id_QFormBuilder
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QFormBuilder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFormBuilder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFormBuilder>
#endif

/*
QFormBuilder ()
*/
HB_FUNC_STATIC( QFORMBUILDER_NEW )
{
  QFormBuilder * o = new QFormBuilder (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFormBuilder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QFORMBUILDER_DELETE )
{
  QFormBuilder * obj = (QFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPluginPath ( const QString & pluginPath )
*/
HB_FUNC_STATIC( QFORMBUILDER_ADDPLUGINPATH )
{
  QFormBuilder * obj = (QFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addPluginPath ( par1 );
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
    obj->clearPluginPaths (  );
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
    QList<QDesignerCustomWidgetInterface *> list = obj->customWidgets (  );
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
    QStringList strl = obj->pluginPaths (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setPluginPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
