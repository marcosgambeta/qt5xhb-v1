/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QTemporaryFile INHERIT QFile

   //DATA class_id INIT Class_Id_QTemporaryFile
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   METHOD createNativeFile

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTemporaryFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTemporaryFile>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTemporaryFile>
#endif

/*
QTemporaryFile()
*/
void QTemporaryFile_new1 ()
{
  QTemporaryFile * o = new QTemporaryFile (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(const QString & templateName)
*/
void QTemporaryFile_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QTemporaryFile * o = new QTemporaryFile ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(QObject * parent)
*/
void QTemporaryFile_new3 ()
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QTemporaryFile * o = new QTemporaryFile ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
void QTemporaryFile_new4 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QTemporaryFile * o = new QTemporaryFile ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QTemporaryFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QTemporaryFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEMPORARYFILE_DELETE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoRemove() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_AUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoRemove (  ) );
  }
}

/*
QString fileTemplate() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->fileTemplate (  ).toLatin1().data() );
  }
}

/*
bool open()
*/
HB_FUNC_STATIC( QTEMPORARYFILE_OPEN )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->open (  ) );
  }
}

/*
void setAutoRemove(bool b)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETAUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoRemove ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileTemplate(const QString & name)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETFILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setFileTemplate ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString fileName() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILENAME )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}

/*
static QTemporaryFile * createNativeFile(QFile & file)
*/
void QTemporaryFile_createNativeFile1 ()
{
  QFile * par1 = (QFile *) _qt5xhb_itemGetPtr(1);
  QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( *par1 );
  _qt5xhb_createReturnClass ( ptr, "QTEMPORARYFILE" );
}

/*
static QTemporaryFile * createNativeFile(const QString & fileName)
*/
void QTemporaryFile_createNativeFile2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QTEMPORARYFILE" );
}

//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
{
  if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QTemporaryFile_createNativeFile1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_createNativeFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
