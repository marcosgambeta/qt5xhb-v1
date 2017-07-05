$header

#include "hbclass.ch"

CLASS QLockFile

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
   METHOD tryLock
   METHOD unlock
   METHOD setStaleLockTime
   METHOD staleLockTime
   METHOD isLocked
   METHOD getLockInfo
   METHOD removeStaleLockFile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QLockFile(const QString &fileName)
*/
HB_FUNC_STATIC( QLOCKFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLockFile * o = new QLockFile ( PQSTRING(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

/*
bool lock()
*/
$method=5,1,0|bool|lock|

/*
bool tryLock(int timeout = 0)
*/
$method=5,1,0|bool|tryLock|int=0

/*
void unlock()
*/
$method=5,1,0|void|unlock|

/*
void setStaleLockTime(int)
*/
$method=5,1,0|void|setStaleLockTime|int

/*
int staleLockTime() const
*/
$method=5,1,0|int|staleLockTime|

/*
bool isLocked() const
*/
$method=5,1,0|bool|isLocked|

/*
bool getLockInfo(qint64 *pid, QString *hostname, QString *appname) const
*/
HB_FUNC_STATIC( QLOCKFILE_GETLOCKINFO ) // TODO: revisar implementacao do metodo e corrigir(?)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISPOINTER(1) && ISCHAR(2) && ISCHAR(3) )
    {
      qint64 * par1 = (qint64 *) _qt5xhb_itemGetPtr(1);
      QString par2 = hb_parc(2);
      QString par3 = hb_parc(3);
      RBOOL( obj->getLockInfo ( par1, &par2, &par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool removeStaleLockFile()
*/
$method=5,1,0|bool|removeStaleLockFile|

$extraMethods

#pragma ENDDUMP
