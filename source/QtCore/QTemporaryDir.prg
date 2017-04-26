/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTemporaryDir

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD isValid
   METHOD path
   METHOD remove
   METHOD setAutoRemove

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTemporaryDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTemporaryDir>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTemporaryDir>
#endif

/*
QTemporaryDir()
*/
void QTemporaryDir_new1 ()
{
  QTemporaryDir * o = new QTemporaryDir (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTemporaryDir(const QString & templateName)
*/
void QTemporaryDir_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QTemporaryDir * o = new QTemporaryDir ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTemporaryDir()
//[2]QTemporaryDir(const QString & templateName)

HB_FUNC_STATIC( QTEMPORARYDIR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryDir_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryDir_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEMPORARYDIR_DELETE )
{
  QTemporaryDir * obj = (QTemporaryDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QTEMPORARYDIR_AUTOREMOVE )
{
  QTemporaryDir * obj = (QTemporaryDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoRemove (  ) );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEMPORARYDIR_ISVALID )
{
  QTemporaryDir * obj = (QTemporaryDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}

/*
QString path() const
*/
HB_FUNC_STATIC( QTEMPORARYDIR_PATH )
{
  QTemporaryDir * obj = (QTemporaryDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}

/*
bool remove()
*/
HB_FUNC_STATIC( QTEMPORARYDIR_REMOVE )
{
  QTemporaryDir * obj = (QTemporaryDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->remove (  ) );
  }
}

/*
void setAutoRemove(bool b)
*/
HB_FUNC_STATIC( QTEMPORARYDIR_SETAUTOREMOVE )
{
  QTemporaryDir * obj = (QTemporaryDir *) _qt5xhb_itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC( QTEMPORARYDIR_NEWFROM )
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

HB_FUNC_STATIC( QTEMPORARYDIR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEMPORARYDIR_NEWFROM );
}

HB_FUNC_STATIC( QTEMPORARYDIR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEMPORARYDIR_NEWFROM );
}

HB_FUNC_STATIC( QTEMPORARYDIR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEMPORARYDIR_SETSELFDESTRUCTION )
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
