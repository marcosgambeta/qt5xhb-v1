/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTranslator INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTranslator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTranslator>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QTranslator>
#endif

/*
QTranslator( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTRANSLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QTranslator * obj = new QTranslator( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTRANSLATOR_DELETE )
{
  QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QTRANSLATOR_ISEMPTY )
{
  QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && HB_ISCHAR(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISCHAR(4)||HB_ISNIL(4)) )
  {
    /*
    bool load( const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString() )
    */
    QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) ) );
    }
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && HB_ISCHAR(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISCHAR(4)||HB_ISNIL(4)) && ( HB_ISCHAR(5)||HB_ISNIL(5)) )
  {
    /*
    bool load( const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString() )
    */
    QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( *PQLOCALE(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPQSTRING(5,QString()) ) );
    }
  }
  else if( ISBETWEEN(2,3) && HB_ISCHAR(1) && HB_ISNUM(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) )
  {
    /*
    bool load( const uchar * data, int len, const QString & directory = QString() )
    */
    QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( PCONSTUCHAR(1), PINT(2), OPQSTRING(3,QString()) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual QString translate( const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1 ) const
*/
HB_FUNC_STATIC( QTRANSLATOR_TRANSLATE )
{
  QTranslator * obj = (QTranslator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,4) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISCHAR(3)||HB_ISNIL(3)) && (HB_ISNUM(4)||HB_ISNIL(4)) )
    {
#endif
      RQSTRING( obj->translate( PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3,0), OPINT(4,-1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
