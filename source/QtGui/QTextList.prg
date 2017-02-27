/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTLISTFORMAT
#endif

CLASS QTextList INHERIT QTextBlockGroup

   DATA class_id INIT Class_Id_QTextList
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD removeItem
   METHOD remove
   METHOD add
   METHOD setFormat
   METHOD format
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextList>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextList>
#endif
#endif

/*
QTextList(QTextDocument *doc)
*/
HB_FUNC_STATIC( QTEXTLIST_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextList * o = new QTextList ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextList *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTEXTLIST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QTEXTLIST_COUNT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTLIST_ISEMPTY )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QTextBlock item(int i) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEM )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->item ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
int itemNumber(const QTextBlock &) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMNUMBER )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->itemNumber ( *par1 ) );
  }
}


/*
QString itemText(const QTextBlock &) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMTEXT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->itemText ( *par1 ).toLatin1().data() );
  }
}


/*
void removeItem(int i)
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVEITEM )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeItem ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void remove(const QTextBlock &)
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVE )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
    obj->remove ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void add(const QTextBlock &block)
*/
HB_FUNC_STATIC( QTEXTLIST_ADD )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
    obj->add ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat(const QTextListFormat &format)
*/
HB_FUNC_STATIC( QTEXTLIST_SETFORMAT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextListFormat format() const
*/
HB_FUNC_STATIC( QTEXTLIST_FORMAT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );
  }
}



#pragma ENDDUMP
