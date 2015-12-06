// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library ng2_dart_sample.app_component;

import 'package:angular2/angular2.dart';

@Component(
    selector: 'my-app',
    template: '''
<child [childInt]="parentInt"></child>
''',
    directives: const [Child])
class AppComponent {
  int parentInt = 10;
}

@Component(
    selector: 'child',
    template: '''
<div>{{ childInt + 1 }}</div>
''')
class Child {
  @Input() int childInt = 0;
}