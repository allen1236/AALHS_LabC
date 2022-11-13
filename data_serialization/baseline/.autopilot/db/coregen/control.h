// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of src_buff
//        bit 31~0 - src_buff[31:0] (Read/Write)
// 0x14 : Data signal of src_buff
//        bit 31~0 - src_buff[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of src_sz
//        bit 31~0 - src_sz[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of dst_buff
//        bit 31~0 - dst_buff[31:0] (Read/Write)
// 0x28 : Data signal of dst_buff
//        bit 31~0 - dst_buff[63:32] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_SRC_BUFF_DATA 0x10
#define CONTROL_BITS_SRC_BUFF_DATA 64
#define CONTROL_ADDR_SRC_SZ_DATA   0x1c
#define CONTROL_BITS_SRC_SZ_DATA   32
#define CONTROL_ADDR_DST_BUFF_DATA 0x24
#define CONTROL_BITS_DST_BUFF_DATA 64
