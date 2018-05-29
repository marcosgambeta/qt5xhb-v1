%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD intrinsicSize
   METHOD drawObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QSizeF intrinsicSize(QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
$virtualMethod=|QSizeF|intrinsicSize|QTextDocument *,int,const QTextFormat &

$prototype=virtual void drawObject(QPainter *painter, const QRectF &rect, QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
$virtualMethod=|void|drawObject|QPainter *,const QRectF &,QTextDocument *,int,const QTextFormat &

$extraMethods

#pragma ENDDUMP
