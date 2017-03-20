/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressBar INHERIT QWidget

   DATA class_id INIT Class_Id_QProgressBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD format
   METHOD invertedAppearance
   METHOD isTextVisible
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD setAlignment
   METHOD setFormat
   METHOD setInvertedAppearance
   METHOD setTextDirection
   METHOD setTextVisible
   METHOD text
   METHOD textDirection
   METHOD value
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD reset
   METHOD setMaximum
   METHOD setMinimum
   METHOD setOrientation
   METHOD setRange
   METHOD setValue
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProgressBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QProgressBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QProgressBar>
#endif

/*
QProgressBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPROGRESSBAR_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QProgressBar * o = new QProgressBar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QPROGRESSBAR_DELETE )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ALIGNMENT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}


/*
QString format () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_FORMAT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->format (  ).toLatin1().data() );
  }
}


/*
bool invertedAppearance ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_INVERTEDAPPEARANCE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->invertedAppearance (  ) );
  }
}



/*
bool isTextVisible () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ISTEXTVISIBLE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTextVisible (  ) );
  }
}


/*
int maximum () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MAXIMUM )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}


/*
int minimum () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MINIMUM )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_ORIENTATION )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETALIGNMENT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QString & format )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETFORMAT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInvertedAppearance ( bool invert )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETINVERTEDAPPEARANCE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setInvertedAppearance ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextDirection ( QProgressBar::Direction textDirection )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETTEXTDIRECTION )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextDirection (  (QProgressBar::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextVisible ( bool visible )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETTEXTVISIBLE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTextVisible ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString text () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_TEXT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
QProgressBar::Direction textDirection ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_TEXTDIRECTION )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textDirection (  ) );
  }
}



/*
int value () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_VALUE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MINIMUMSIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_SIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QPROGRESSBAR_RESET )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximum ( int maximum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETMAXIMUM )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaximum ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimum ( int minimum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETMINIMUM )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimum ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETORIENTATION )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETRANGE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( (int) hb_parni(1), (int) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( int value )
*/
HB_FUNC_STATIC( QPROGRESSBAR_SETVALUE )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setValue ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
