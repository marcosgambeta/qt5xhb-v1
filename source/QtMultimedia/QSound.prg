/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSound INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD fileName
   METHOD isFinished
   METHOD stop
   METHOD play1
   METHOD play2
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSound
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSound>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSound>
#endif

/*
QSound(const QString& filename, QObject* parent = 0)
*/
HB_FUNC_STATIC( QSOUND_NEW )
{
  QSound * o = new QSound ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSOUND_DELETE )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int loops() const
*/
HB_FUNC_STATIC( QSOUND_LOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loops () );
  }
}


/*
int loopsRemaining() const
*/
HB_FUNC_STATIC( QSOUND_LOOPSREMAINING )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopsRemaining () );
  }
}


/*
void setLoops(int)
*/
HB_FUNC_STATIC( QSOUND_SETLOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoops ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QSOUND_FILENAME )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
  }
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QSOUND_ISFINISHED )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}


/*
void stop()
*/
HB_FUNC_STATIC( QSOUND_STOP )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QSOUND_PLAY1 )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void play(const QString& filename)
*/
HB_FUNC_STATIC( QSOUND_PLAY2 )
{
  QSound::play ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
