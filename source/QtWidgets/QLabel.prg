/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMOVIE
REQUEST QPICTURE
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QLabel INHERIT QFrame

   DATA class_id INIT Class_Id_QLabel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buddy
   METHOD hasScaledContents
   METHOD hasSelectedText
   METHOD indent
   METHOD margin
   METHOD movie
   METHOD openExternalLinks
   METHOD picture
   METHOD pixmap
   METHOD selectedText
   METHOD setAlignment
   METHOD setBuddy
   METHOD setIndent
   METHOD setMargin
   METHOD setOpenExternalLinks
   METHOD setScaledContents
   METHOD setSelection
   METHOD setTextFormat
   METHOD setTextInteractionFlags
   METHOD setWordWrap
   METHOD text
   METHOD textFormat
   METHOD textInteractionFlags
   METHOD wordWrap
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD setMovie
   METHOD setNum1
   METHOD setNum2
   METHOD setNum
   METHOD setPicture
   METHOD setPixmap
   METHOD setText
   METHOD onLinkActivated
   METHOD onLinkHovered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLabel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QLabel>
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
#include <QLabel>
#endif
#endif

/*
QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QLabel * o = new QLabel ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QLabel * o = new QLabel ( par1, par2,  (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLABEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLABEL_ALIGNMENT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}


/*
QWidget * buddy () const
*/
HB_FUNC_STATIC( QLABEL_BUDDY )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->buddy (  );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
bool hasScaledContents () const
*/
HB_FUNC_STATIC( QLABEL_HASSCALEDCONTENTS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasScaledContents (  ) );
  }
}


/*
bool hasSelectedText () const
*/
HB_FUNC_STATIC( QLABEL_HASSELECTEDTEXT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasSelectedText (  ) );
  }
}


/*
int indent () const
*/
HB_FUNC_STATIC( QLABEL_INDENT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indent (  ) );
  }
}


/*
int margin () const
*/
HB_FUNC_STATIC( QLABEL_MARGIN )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->margin (  ) );
  }
}


/*
QMovie * movie () const
*/
HB_FUNC_STATIC( QLABEL_MOVIE )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMovie * ptr = obj->movie (  );
    _qt5xhb_createReturnClass ( ptr, "QMOVIE" );
  }
}


/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QLABEL_OPENEXTERNALLINKS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->openExternalLinks (  ) );
  }
}


/*
const QPicture * picture () const
*/
HB_FUNC_STATIC( QLABEL_PICTURE )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPicture * ptr = obj->picture (  );
    _qt5xhb_createReturnClass ( ptr, "QPICTURE" );
  }
}


/*
const QPixmap * pixmap () const
*/
HB_FUNC_STATIC( QLABEL_PIXMAP )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPixmap * ptr = obj->pixmap (  );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP" );
  }
}


/*
QString selectedText () const
*/
HB_FUNC_STATIC( QLABEL_SELECTEDTEXT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->selectedText (  ).toLatin1().data() );
  }
}


/*
void setAlignment ( Qt::Alignment )
*/
HB_FUNC_STATIC( QLABEL_SETALIGNMENT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBuddy ( QWidget * buddy )
*/
HB_FUNC_STATIC( QLABEL_SETBUDDY )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setBuddy ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndent ( int )
*/
HB_FUNC_STATIC( QLABEL_SETINDENT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndent ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMargin ( int )
*/
HB_FUNC_STATIC( QLABEL_SETMARGIN )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMargin ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QLABEL_SETOPENEXTERNALLINKS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpenExternalLinks ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaledContents ( bool )
*/
HB_FUNC_STATIC( QLABEL_SETSCALEDCONTENTS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setScaledContents ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelection ( int start, int length )
*/
HB_FUNC_STATIC( QLABEL_SETSELECTION )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelection ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextFormat ( Qt::TextFormat )
*/
HB_FUNC_STATIC( QLABEL_SETTEXTFORMAT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QLABEL_SETTEXTINTERACTIONFLAGS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QLABEL_SETWORDWRAP )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWordWrap ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QLABEL_TEXT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
Qt::TextFormat textFormat () const
*/
HB_FUNC_STATIC( QLABEL_TEXTFORMAT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textFormat (  ) );
  }
}


/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QLABEL_TEXTINTERACTIONFLAGS )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textInteractionFlags (  ) );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QLABEL_WORDWRAP )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->wordWrap (  ) );
  }
}


/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLABEL_HEIGHTFORWIDTH )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QLABEL_MINIMUMSIZEHINT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QLABEL_SIZEHINT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QLABEL_CLEAR )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovie ( QMovie * movie )
*/
HB_FUNC_STATIC( QLABEL_SETMOVIE )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMovie * par1 = (QMovie *) _qt5xhb_itemGetPtr(1);
    obj->setMovie ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNum ( int num )
*/
HB_FUNC_STATIC( QLABEL_SETNUM1 )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNum ( double num )
*/
HB_FUNC_STATIC( QLABEL_SETNUM2 )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setNum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QLABEL_SETNUM ) // TODO: int ou double ?
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    //if( HB_IS_DOUBLE(1) )
    //{
      HB_FUNC_EXEC( QLABEL_SETNUM2 );
    //}
    //else
    //{
    //  HB_FUNC_EXEC( QLABEL_SETNUM1 );
    //}
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPicture ( const QPicture & picture )
*/
HB_FUNC_STATIC( QLABEL_SETPICTURE )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPicture * par1 = (QPicture *) _qt5xhb_itemGetPtr(1);
    obj->setPicture ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( const QPixmap & )
*/
HB_FUNC_STATIC( QLABEL_SETPIXMAP )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & )
*/
HB_FUNC_STATIC( QLABEL_SETTEXT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
