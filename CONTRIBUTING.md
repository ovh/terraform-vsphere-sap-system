# Contributing to terraform-vsphere-sap-system
 
This project accepts contributions. In order to contribute, you should
pay attention to a few things:
 
1. your code must follow the coding style rules
2. your code must be unit-tested
3. your code must be documented
4. your work must be signed (see below)
5. you may contribute through GitHub Pull Requests
 
# Coding and documentation Style
 
- Indent two spaces for each nesting level.
- When multiple arguments with single-line values appear on consecutive lines at the same nesting level.
- When both arguments and blocks appear together inside a block body, place all of the arguments together at the top and then place nested blocks below them. Use one blank line to separate the arguments from the blocks.
- Use empty lines to separate logical groups of arguments within a block.
- For blocks that contain both arguments and "meta-arguments" (as defined by the Terraform language semantics), list meta-arguments first and separate them from other arguments with one blank line. Place meta-argument blocks last and separate them from other blocks with one blank line.
- Top-level blocks should always be separated from one another by one blank line. Nested blocks should also be separated by blank lines, except when grouping together related blocks of the same type (like multiple provisioner blocks in a resource).
- Avoid separating multiple blocks of the same type with other blocks of a different type, unless the block types are defined by semantics to form a family. (For example: root_block_device, ebs_block_device and ephemeral_block_device on aws_instance form a family of block types describing AWS block devices, and can therefore be grouped together and mixed.)

More information on [Hashicorp](https://developer.hashicorp.com/terraform/language/syntax/style)
 
# Submitting Modifications
 
The contributions should be submitted through Github Pull Requests
and follow the DCO which is defined below.
 
# Licensing for new files
 
terraform-vsphere-sap-system is licensed under a Apache License 2 license. Anything
contributed to terraform-vsphere-sap-system must be released under this license.
 
When introducing a new file into the project, please make sure it has a
copyright header making clear under which license it's being released.
 
# Developer Certificate of Origin (DCO)
 
To improve tracking of contributions to this project we will use a
process modeled on the modified DCO 1.1 and use a "sign-off" procedure
on patches that are being emailed around or contributed in any other
way.
 
The sign-off is a simple line at the end of the explanation for the
patch, which certifies that you wrote it or otherwise have the right
to pass it on as an open-source patch.  The rules are pretty simple:
if you can certify the below:
 
By making a contribution to this project, I certify that:
 
(a) The contribution was created in whole or in part by me and I have
    the right to submit it under the open source license indicated in
    the file; or
 
(b) The contribution is based upon previous work that, to the best of
    my knowledge, is covered under an appropriate open source License
    and I have the right under that license to submit that work with
    modifications, whether created in whole or in part by me, under
    the same open source license (unless I am permitted to submit
    under a different license), as indicated in the file; or
 
(c) The contribution was provided directly to me by some other person
    who certified (a), (b) or (c) and I have not modified it.
 
(d) The contribution is made free of any other party's intellectual
    property claims or rights.
 
(e) I understand and agree that this project and the contribution are
    public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
 
 
then you just add a line saying
 
    Signed-off-by: Random J Developer <random@example.org>
 
using your real name (sorry, no pseudonyms or anonymous contributions.)