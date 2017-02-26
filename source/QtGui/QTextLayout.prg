/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QFONT
REQUEST QTEXTOPTION
REQUEST QTEXTLINE
REQUEST QPOINTF
REQUEST QRECTF
REQUEST QTEXTENGINE
#endif

CLASS QTextLayout

   DATA pointer
   DATA class_id INIT Class_Id_QTextLayout
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD setFont
   METHOD font
   METHOD setRawFont
   METHOD setText
   METHOD text
   METHOD setTextOption
   METHOD textOption
   METHOD setPreeditArea
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD clearAdditionalFormats
   METHOD setCacheEnabled
   METHOD cacheEnabled
   METHOD setCursorMoveStyle
   METHOD cursorMoveStyle
   METHOD beginLayout
   METHOD endLayout
   METHOD clearLayout
   METHOD createLine
   METHOD lineCount
   METHOD lineAt
   METHOD lineForTextPosition
   METHOD isValidCursorPosition
   METHOD nextCursorPosition
   METHOD previousCursorPosition
   METHOD leftCursorPosition
   METHOD rightCursorPosition
   METHOD drawCursor1
   METHOD drawCursor2
   METHOD position
   METHOD setPosition
   METHOD boundingRect
   METHOD minimumWidth
   METHOD maximumWidth
   METHOD engine
   METHOD setFlags
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextLayout>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextLayout>
#endif
#endif

#include <QTextCursor>
#include <QTextBlock>

/*
QTextLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextLayout * o = new QTextLayout (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextLayout(const QString& text)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QTextLayout * o = new QTextLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QFont * par2 = (QFont *) _qtxhb_itemGetPtr(2);
  QPaintDevice * par3 = ISNIL(3)? 0 : (QPaintDevice *) _qtxhb_itemGetPtr(3);
  QTextLayout * o = new QTextLayout ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextLayout(const QTextBlock &b)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
  QTextLayout * o = new QTextLayout ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QTextLayout()
//[2]QTextLayout(const QString& text)
//[3]QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
//[4]QTextLayout(const QTextBlock &b)

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setFont(const QFont &f)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETFONT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_FONT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setRawFont(const QRawFont &rawFont)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETRAWFONT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRawFont * par1 = (QRawFont *) _qtxhb_itemGetPtr(1);
    obj->setRawFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText(const QString& string)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
void setTextOption(const QTextOption &option)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextOption * par1 = (QTextOption *) _qtxhb_itemGetPtr(1);
    obj->setTextOption ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QTextOption &textOption() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextOption * ptr = &obj->textOption (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
void setPreeditArea(int position, const QString &text)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPREEDITAREA )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setPreeditArea ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int preeditAreaPosition() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREAPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->preeditAreaPosition (  ) );
  }
}


/*
QString preeditAreaText() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREATEXT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->preeditAreaText (  ).toLatin1().data() );
  }
}




/*
void clearAdditionalFormats()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARADDITIONALFORMATS )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearAdditionalFormats (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCacheEnabled(bool enable)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCacheEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool cacheEnabled() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->cacheEnabled (  ) );
  }
}


/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorMoveStyle (  (Qt::CursorMoveStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cursorMoveStyle (  ) );
  }
}


/*
void beginLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BEGINLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ENDLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLine createLine()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CREATELINE )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->createLine (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
int lineCount() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINECOUNT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineCount (  ) );
  }
}


/*
QTextLine lineAt(int i) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEAT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->lineAt ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
QTextLine lineForTextPosition(int pos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEFORTEXTPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->lineForTextPosition ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
bool isValidCursorPosition(int pos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ISVALIDCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValidCursorPosition ( (int) hb_parni(1) ) );
  }
}


/*
int nextCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEXTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    hb_retni( obj->nextCursorPosition ( (int) hb_parni(1),  (QTextLayout::CursorMode) par2 ) );
  }
}


/*
int previousCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREVIOUSCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    hb_retni( obj->previousCursorPosition ( (int) hb_parni(1),  (QTextLayout::CursorMode) par2 ) );
  }
}


/*
int leftCursorPosition(int oldPos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LEFTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->leftCursorPosition ( (int) hb_parni(1) ) );
  }
}


/*
int rightCursorPosition(int oldPos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_RIGHTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rightCursorPosition ( (int) hb_parni(1) ) );
  }
}



/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR1 )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    obj->drawCursor ( par1, *par2, (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR2 )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    obj->drawCursor ( par1, *par2, (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF position() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_POSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setPosition(const QPointF &p)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setPosition ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BOUNDINGRECT )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal minimumWidth() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MINIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->minimumWidth (  ) );
  }
}


/*
qreal maximumWidth() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MAXIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->maximumWidth (  ) );
  }
}



/*
QTextEngine *engine() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ENGINE )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTENGINE" );
  }
}


/*
void setFlags(int flags)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETFLAGS )
{
  QTextLayout * obj = (QTextLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFlags ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLAYOUT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTLAYOUT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
