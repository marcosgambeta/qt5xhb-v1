$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMOVIE
REQUEST QPICTURE
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QLabel INHERIT QFrame

   DATA self_destruction INIT .F.

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
   METHOD setNum
   METHOD setPicture
   METHOD setPixmap
   METHOD setText

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QLabel_new1 ()
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QLabel * o = new QLabel ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QLabel_new2 ()
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QLabel * o = new QLabel ( PQSTRING(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QLabel_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLABEL_ALIGNMENT )
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      hb_retni( obj->alignment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->buddy ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasScaledContents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasSelectedText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->indent () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->margin () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QMovie * ptr = obj->movie ();
      _qt5xhb_createReturnClass ( ptr, "QMOVIE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->openExternalLinks () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      const QPicture * ptr = obj->picture ();
      _qt5xhb_createReturnClass ( ptr, "QPICTURE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      const QPixmap * ptr = obj->pixmap ();
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->selectedText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
    {
      obj->setBuddy ( OPQWIDGET(1,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setIndent ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMargin ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setOpenExternalLinks ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setScaledContents ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setSelection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextFormat ( (Qt::TextFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTextInteractionFlags ( (Qt::TextInteractionFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setWordWrap ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      hb_retni( obj->textFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      hb_retni( obj->textInteractionFlags () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->wordWrap () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->heightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQMOVIE(1) )
    {
      obj->setMovie ( PQMOVIE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNum ( int num )
*/
void QLabel_setNum1 ()
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setNum ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNum ( double num )
*/
void QLabel_setNum2 ()
{
  QLabel * obj = (QLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setNum ( PDOUBLE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setNum ( int num )
//[2]void setNum ( double num )

HB_FUNC_STATIC( QLABEL_SETNUM )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);

    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        QLabel_setNum2();
      }
      else if( HB_IS_INTEGER(pNum) )
      {
        QLabel_setNum1();
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
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
    if( ISNUMPAR(1) && ISQPICTURE(1) )
    {
      obj->setPicture ( *PQPICTURE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
      obj->setPixmap ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
