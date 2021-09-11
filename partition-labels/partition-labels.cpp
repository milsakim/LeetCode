class Solution {
public:
    vector<int> partitionLabels(string s) {
        int lastIndex[26];
        
        // s를 순회하며 각 알파벳이 s에서 마지막으로 등장한 인덱스를 저장 
        for (int i = 0; i < s.size(); i++) {
            int letter = int(s[i] - 'a');
            lastIndex[letter] = i;
        }
    
        vector<int> result;
        
        for (int start = 0; start < s.size(); start++) {
            int letter = int(s[start] - 'a');
            int end = lastIndex[letter];
            
            for (int j = start; j <= end; j++) {
                int otherLetter = int(s[j] - 'a');
                
                if (lastIndex[otherLetter] > end) {
                    end = lastIndex[otherLetter];
                }
            }
            
            result.push_back(end - start + 1);
            start = end;
        }
        
        return result;
    }
};