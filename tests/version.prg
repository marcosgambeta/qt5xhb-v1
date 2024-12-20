//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   CLS

   ? qt5xhb_version()

   ?

   // apenas para compatibilidade com o Qt4xHb
   ? qt4xhb_version()

   ?

   WAIT

RETURN NIL
