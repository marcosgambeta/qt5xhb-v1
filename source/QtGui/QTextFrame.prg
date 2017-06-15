/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTFRAMEFORMAT
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMELAYOUTDATA
#endif

CLASS QTextFrame INHERIT QTextObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFrameFormat
   METHOD frameFormat
   METHOD firstCursorPosition
   METHOD lastCursorPosition
   METHOD firstPosition
   METHOD lastPosition
   METHOD layoutData
   METHOD setLayoutData
   METHOD childFrames
   METHOD parentFrame

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextFrame>
#endif

#include <QTextCursor>

/*
QTextFrame(QTextDocument *doc)
*/
HB_FUNC_STATIC( QTEXTFRAME_NEW )
{
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextFrame * o = new QTextFrame ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTFRAME_DELETE )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setFrameFormat(const QTextFrameFormat &format)
*/
HB_FUNC_STATIC( QTEXTFRAME_SETFRAMEFORMAT )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameFormat ( *PQTEXTFRAMEFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextFrameFormat frameFormat() const
*/
HB_FUNC_STATIC( QTEXTFRAME_FRAMEFORMAT )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->frameFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAMEFORMAT" );
  }
}


/*
QTextCursor firstCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTFRAME_FIRSTCURSORPOSITION )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor lastCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTFRAME_LASTCURSORPOSITION )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
int firstPosition() const
*/
HB_FUNC_STATIC( QTEXTFRAME_FIRSTPOSITION )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->firstPosition () );
  }
}


/*
int lastPosition() const
*/
HB_FUNC_STATIC( QTEXTFRAME_LASTPOSITION )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lastPosition () );
  }
}


/*
QTextFrameLayoutData *layoutData() const
*/
HB_FUNC_STATIC( QTEXTFRAME_LAYOUTDATA )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrameLayoutData * ptr = obj->layoutData ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAMELAYOUTDATA" );
  }
}


/*
void setLayoutData(QTextFrameLayoutData *data)
*/
HB_FUNC_STATIC( QTEXTFRAME_SETLAYOUTDATA )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrameLayoutData * par1 = (QTextFrameLayoutData *) _qt5xhb_itemGetPtr(1);
    obj->setLayoutData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QTextFrame *> childFrames() const
*/
HB_FUNC_STATIC( QTEXTFRAME_CHILDFRAMES )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QTextFrame *> list = obj->childFrames ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTFRAME" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTFRAME" );
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
        hb_itemPutPtr( pItem, (QTextFrame *) list[i] );
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
QTextFrame *parentFrame() const
*/
HB_FUNC_STATIC( QTEXTFRAME_PARENTFRAME )
{
  QTextFrame * obj = (QTextFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->parentFrame ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}



#pragma ENDDUMP
