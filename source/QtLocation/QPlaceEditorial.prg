/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QPlaceEditorial INHERIT QPlaceContent

   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD title
   METHOD setTitle
   METHOD language
   METHOD setLanguage

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceEditorial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceEditorial>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceEditorial>
#endif
#endif

/*
QPlaceEditorial()
*/
void QPlaceEditorial_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * o = new QPlaceEditorial ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)
*/
void QPlaceEditorial_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * o = new QPlaceEditorial ( *PQPLACECONTENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceEditorial()
//[2]QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACEEDITORIAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceEditorial_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceEditorial_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACEEDITORIAL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString text() const
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
#endif
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
#endif
}

/*
void setTitle(const QString &data)
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString language() const
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_LANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->language () );
  }
#endif
}

/*
void setLanguage(const QString &data)
*/
HB_FUNC_STATIC( QPLACEEDITORIAL_SETLANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceEditorial * obj = (QPlaceEditorial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLanguage ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
