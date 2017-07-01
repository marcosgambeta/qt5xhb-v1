/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE
#endif

CLASS QHelpEngine INHERIT QHelpEngineCore

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpEngine>
#endif

/*
QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINE_NEW )
{
  QHelpEngine * o = new QHelpEngine ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QHELPENGINE_DELETE )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHelpContentModel * contentModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentModel * ptr = obj->contentModel ();
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTMODEL" );
  }
}


/*
QHelpContentWidget * contentWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentWidget * ptr = obj->contentWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTWIDGET" );
  }
}


/*
QHelpIndexModel * indexModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpIndexModel * ptr = obj->indexModel ();
    _qt5xhb_createReturnClass ( ptr, "QHELPINDEXMODEL" );
  }
}


/*
QHelpIndexWidget * indexWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpIndexWidget * ptr = obj->indexWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPINDEXWIDGET" );
  }
}


/*
QHelpSearchEngine * searchEngine ()
*/
HB_FUNC_STATIC( QHELPENGINE_SEARCHENGINE )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpSearchEngine * ptr = obj->searchEngine ();
    _qt5xhb_createReturnClass ( ptr, "QHELPSEARCHENGINE" );
  }
}



#pragma ENDDUMP
