/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTOPTION
REQUEST QSIZEF
#endif

CLASS QStaticText

   DATA pointer
   DATA class_id INIT Class_Id_QStaticText
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setText
   METHOD text
   METHOD setTextFormat
   METHOD textFormat
   METHOD setTextWidth
   METHOD textWidth
   METHOD setTextOption
   METHOD textOption
   METHOD size
   METHOD prepare
   METHOD setPerformanceHint
   METHOD performanceHint
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStaticText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStaticText>
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
#include <QStaticText>
#endif

/*
QStaticText()
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW1 )
{
  QStaticText * o = new QStaticText (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QStaticText(const QString &text)
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QStaticText * o = new QStaticText ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QStaticText(const QStaticText &other)
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW3 )
{
  QStaticText * par1 = (QStaticText *) _qt5xhb_itemGetPtr(1);
  QStaticText * o = new QStaticText ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QStaticText()
//[2]QStaticText(const QString &text)
//[3]QStaticText(const QStaticText &other)

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATICTEXT_DELETE )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QStaticText &other)
*/
HB_FUNC_STATIC( QSTATICTEXT_SWAP )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStaticText * par1 = (QStaticText *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QSTATICTEXT_TEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
void setTextFormat(Qt::TextFormat textFormat)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textFormat (  ) );
  }
}


/*
void setTextWidth(qreal textWidth)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTextWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textWidth() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->textWidth (  ) );
  }
}


/*
void setTextOption(const QTextOption &textOption)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextOption * par1 = (QTextOption *) _qt5xhb_itemGetPtr(1);
    obj->setTextOption ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextOption textOption() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->textOption (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
QSizeF size() const
*/
HB_FUNC_STATIC( QSTATICTEXT_SIZE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void prepare(const QTransform &matrix = QTransform(), const QFont &font = QFont())
*/
HB_FUNC_STATIC( QSTATICTEXT_PREPARE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform par1 = ISNIL(1)? QTransform() : *(QTransform *) _qt5xhb_itemGetPtr(1);
    QFont par2 = ISNIL(2)? QFont() : *(QFont *) _qt5xhb_itemGetPtr(2);
    obj->prepare ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHint(PerformanceHint performanceHint)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETPERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPerformanceHint (  (QStaticText::PerformanceHint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PerformanceHint performanceHint() const
*/
HB_FUNC_STATIC( QSTATICTEXT_PERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->performanceHint (  ) );
  }
}



HB_FUNC_STATIC( QSTATICTEXT_NEWFROM )
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

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTATICTEXT_SETSELFDESTRUCTION )
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