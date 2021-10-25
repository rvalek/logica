#
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Testing misc functions of SQLite.

@Engine("sqlite");

Test("Set") = Size(s) :- s Set= (x + y :- x in Range(5), y in Range(5));
Test("Sort") = Sort([6,3,2,5,1,4]);
Test("InList") = r :-
  r List= (
    x ++ "," ++ y :-
    x in Range(3), y in Range(3),
    Constraint(x in [y + 1, y + 2])
  );
Test("Fingerprint") = t :-
  fs List= (Abs(Fingerprint(i) / 9223372036854775808.) :- i in Range(10000)),
  a += (1 :- f < 0.4, f in fs),
  t == a / 10000.;  