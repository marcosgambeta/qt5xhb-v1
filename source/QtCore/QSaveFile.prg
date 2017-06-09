/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSaveFile INHERIT QFileDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD setFileName
   METHOD open
   METHOD commit
   METHOD cancelWriting
   METHOD setDirectWriteFallback
   METHOD directWriteFallback

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSaveFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSaveFile>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSaveFile>
#endif
#endif

/*
QSaveFile(const QString &name)
*/
void QSaveFile_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSaveFile(QObject *parent = 0)
*/
void QSaveFile_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSaveFile(const QString &name, QObject *parent)
*/
void QSaveFile_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * o = new QSaveFile ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QSaveFile(const QString &name)
//[2]QSaveFile(QObject *parent = 0)
//[3]QSaveFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QSAVEFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSaveFile_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSaveFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QSaveFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSAVEFILE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString fileName() const
*/
HB_FUNC_STATIC( QSAVEFILE_FILENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
  }
#endif
}

/*
void setFileName(const QString &name)
*/
HB_FUNC_STATIC( QSAVEFILE_SETFILENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool open(OpenMode flags)
*/
HB_FUNC_STATIC( QSAVEFILE_OPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->open ( (QIODevice::OpenMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool commit()
*/
HB_FUNC_STATIC( QSAVEFILE_COMMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->commit () );
  }
#endif
}

/*
void cancelWriting()
*/
HB_FUNC_STATIC( QSAVEFILE_CANCELWRITING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cancelWriting ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setDirectWriteFallback(bool enabled)
*/
HB_FUNC_STATIC( QSAVEFILE_SETDIRECTWRITEFALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDirectWriteFallback ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool directWriteFallback() const
*/
HB_FUNC_STATIC( QSAVEFILE_DIRECTWRITEFALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSaveFile * obj = (QSaveFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->directWriteFallback () );
  }
#endif
}

#pragma ENDDUMP
