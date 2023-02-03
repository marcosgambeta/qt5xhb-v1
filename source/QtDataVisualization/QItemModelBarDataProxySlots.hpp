/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QITEMMODELBARDATAPROXYSLOTS_H
#define QITEMMODELBARDATAPROXYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QItemModelBarDataProxy>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QItemModelBarDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QItemModelBarDataProxySlots( QObject *parent = 0 );
  ~QItemModelBarDataProxySlots();
  public slots:
  void autoColumnCategoriesChanged( bool enable );
  void autoRowCategoriesChanged( bool enable );
  void columnCategoriesChanged();
  void columnRoleChanged( const QString & role );
  void columnRolePatternChanged( const QRegExp & pattern );
  void columnRoleReplaceChanged( const QString & replace );
  void itemModelChanged( const QAbstractItemModel * itemModel );
  void multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior );
  void rotationRoleChanged( const QString & role );
  void rotationRolePatternChanged( const QRegExp & pattern );
  void rotationRoleReplaceChanged( const QString & replace );
  void rowCategoriesChanged();
  void rowRoleChanged( const QString & role );
  void rowRolePatternChanged( const QRegExp & pattern );
  void rowRoleReplaceChanged( const QString & replace );
  void useModelCategoriesChanged( bool enable );
  void valueRoleChanged( const QString & role );
  void valueRolePatternChanged( const QRegExp & pattern );
  void valueRoleReplaceChanged( const QString & replace );
};

#endif /* QITEMMODELBARDATAPROXYSLOTS_H */
