/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileSelector INHERIT QObject

   METHOD new
   METHOD delete
   METHOD select
   METHOD extraSelectors
   METHOD setExtraSelectors
   METHOD allSelectors

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileSelector
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileSelector>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileSelector>
#endif

#include <QUrl>

/*
QFileSelector(QObject *parent = 0)
*/
HB_FUNC_STATIC( QFILESELECTOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QFileSelector * o = new QFileSelector ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILESELECTOR_DELETE )
{
  QFileSelector * obj = (QFileSelector *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString select(const QString &filePath) const
*/
void QFileSelector_select1 ()
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->select ( PQSTRING(1) ) );
  }
}

/*
QUrl select(const QUrl &filePath) const
*/
void QFileSelector_select2 ()
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->select ( *PQURL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

//[1]QString select(const QString &filePath) const
//[2]QUrl select(const QUrl &filePath) const

HB_FUNC_STATIC( QFILESELECTOR_SELECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileSelector_select1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QFileSelector_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList extraSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_EXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->extraSelectors () );
  }
}

/*
void setExtraSelectors(const QStringList &list)
*/
HB_FUNC_STATIC( QFILESELECTOR_SETEXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setExtraSelectors ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList allSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_ALLSELECTORS )
{
  QFileSelector * obj = (QFileSelector *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->allSelectors () );
  }
}

#pragma ENDDUMP
