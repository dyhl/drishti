#ifndef FIBERGROUP_H
#define FIBERGROUP_H

#include "fiber.h"

class FiberGroup
{
 public :
  FiberGroup();
  ~FiberGroup();


  bool fibersPresent() { return m_fibers.count() > 0; };
  QList<Fiber*>* fibers() { return &m_fibers; };

  void reset();

  void newFiber();
  void addPoint(int, int, int);
  void removePoint(int, int, int);

 private :
  QList<Fiber*> m_fibers;
};

#endif