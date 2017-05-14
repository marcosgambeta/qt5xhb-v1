/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSGDynamicTexture INHERIT QSGTexture

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD updateTexture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGDynamicTexture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGDynamicTexture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGDynamicTexture>
#endif


/*
virtual bool updateTexture() = 0
*/
HB_FUNC_STATIC( QSGDYNAMICTEXTURE_UPDATETEXTURE )
{
  QSGDynamicTexture * obj = (QSGDynamicTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->updateTexture (  ) );
  }
}



#pragma ENDDUMP
