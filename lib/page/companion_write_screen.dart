import 'package:flutter/material.dart';

class CompanionWriteScreen extends StatelessWidget {
  const CompanionWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('동행 작성', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLabel('채팅방 인원'),
              const SizedBox(height: 4),
              const TextField(
                decoration: InputDecoration(
                  hintText: '인원 수',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              _buildLabel('희망 성별'),
              const SizedBox(height: 8),
              Row(
                children: [
                  _genderButton('남성'),
                  const SizedBox(width: 8),
                  _genderButton('여성'),
                  const SizedBox(width: 8),
                  _genderButton('무관'),
                ],
              ),
              const SizedBox(height: 16),
              _buildLabel('희망 연령'),
              const SizedBox(height: 4),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: '10대', child: Text('10대')),
                  DropdownMenuItem(value: '20대', child: Text('20대')),
                  DropdownMenuItem(value: '30대', child: Text('30대')),
                ],
                onChanged: null, // 실제 값은 상태 관리 필요
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '연령',
                ),
              ),
              const SizedBox(height: 16),
              _buildLabel('희망 응원팀'),
              const SizedBox(height: 4),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: 'LG 트윈스', child: Text('LG 트윈스')),
                  DropdownMenuItem(value: '두산 베어스', child: Text('두산 베어스')),
                  // 추가 팀 가능
                ],
                onChanged: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '응원팀',
                ),
              ),
              const SizedBox(height: 16),
              _buildLabel('모집 글 작성'),
              const SizedBox(height: 4),
              const TextField(
                decoration: InputDecoration(
                  hintText: '제목',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: '글 내용',
                  border: OutlineInputBorder(),
                ),
                maxLines: 6,
                maxLength: 1000,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade200,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('완료'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }

  static Widget _genderButton(String label) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {}, // 선택 로직은 상태관리 필요
        child: Text(label),
      ),
    );
  }
}
