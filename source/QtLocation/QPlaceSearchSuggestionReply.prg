/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceSearchSuggestionReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD suggestions
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceSearchSuggestionReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchSuggestionReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchSuggestionReply>
#endif
#endif

/*
explicit QPlaceSearchSuggestionReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * o = new QPlaceSearchSuggestionReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * obj = (QPlaceSearchSuggestionReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringList suggestions() const
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_SUGGESTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * obj = (QPlaceSearchSuggestionReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->suggestions ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
Type type() const
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * obj = (QPlaceSearchSuggestionReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}



#pragma ENDDUMP
