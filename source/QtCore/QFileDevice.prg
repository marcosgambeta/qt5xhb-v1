/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QFileDevice INHERIT QIODevice

   DATA class_id INIT Class_Id_QFileDevice
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD error
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD permissions
   METHOD resize
   METHOD setPermissions
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileDevice>
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
#include <QFileDevice>
#endif

HB_FUNC_STATIC( QFILEDEVICE_DELETE )
{
  QFileDevice * obj = (QFileDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
FileError error() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ERROR )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
virtual QString fileName() const
*/
HB_FUNC_STATIC( QFILEDEVICE_FILENAME )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
bool flush()
*/
HB_FUNC_STATIC( QFILEDEVICE_FLUSH )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
int handle() const
*/
HB_FUNC_STATIC( QFILEDEVICE_HANDLE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}



/*
virtual Permissions permissions() const
*/
HB_FUNC_STATIC( QFILEDEVICE_PERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->permissions (  ) );
  }
}


/*
virtual bool resize(qint64 sz)
*/
HB_FUNC_STATIC( QFILEDEVICE_RESIZE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->resize ( (qint64) hb_parni(1) ) );
  }
}


/*
virtual bool setPermissions(Permissions permissions)
*/
HB_FUNC_STATIC( QFILEDEVICE_SETPERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setPermissions (  (QFileDevice::Permissions) par1 ) );
  }
}



/*
void unsetError()
*/
HB_FUNC_STATIC( QFILEDEVICE_UNSETERROR )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool atEnd() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ATEND )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual void close()
*/
HB_FUNC_STATIC( QFILEDEVICE_CLOSE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ISSEQUENTIAL )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual qint64 pos() const
*/
HB_FUNC_STATIC( QFILEDEVICE_POS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pos (  ) );
  }
}


/*
virtual bool seek(qint64 pos)
*/
HB_FUNC_STATIC( QFILEDEVICE_SEEK )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->seek ( (qint64) hb_parni(1) ) );
  }
}


/*
virtual qint64 size() const
*/
HB_FUNC_STATIC( QFILEDEVICE_SIZE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}



#pragma ENDDUMP
