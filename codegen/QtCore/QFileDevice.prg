$header

#include "hbclass.ch"

CLASS QFileDevice INHERIT QIODevice

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
FileError error() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ERROR )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
virtual QString fileName() const
*/
$method=|QString|fileName|

/*
bool flush()
*/
$method=|bool|flush|

/*
int handle() const
*/
$method=|int|handle|

/*
virtual Permissions permissions() const
*/
HB_FUNC_STATIC( QFILEDEVICE_PERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->permissions () );
  }
}

/*
virtual bool resize(qint64 sz)
*/
$method=|bool|resize|qint64

/*
virtual bool setPermissions(Permissions permissions)
*/
HB_FUNC_STATIC( QFILEDEVICE_SETPERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      RBOOL( obj->setPermissions ( (QFileDevice::Permissions) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void unsetError()
*/
$method=|void|unsetError|

/*
virtual bool atEnd() const
*/
$method=|bool|atEnd|

/*
virtual void close()
*/
$method=|void|close|

/*
virtual bool isSequential() const
*/
$method=|bool|isSequential|

/*
virtual qint64 pos() const
*/
$method=|qint64|pos|

/*
virtual bool seek(qint64 pos)
*/
$method=|bool|seek|qint64

/*
virtual qint64 size() const
*/
$method=|qint64|size|

#pragma ENDDUMP
