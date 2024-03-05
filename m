Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EAE8613B
	for <keys@linux.kernel.org>; Tue,  5 Mar 2024 14:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709647565; cv=none; b=lz1afO/aqO1aoBwvWHd7xdhNOMefsneLtGL8J4DS6x2M25Q8LeRkZVlKKLTiA7W16iz9l7fzbkuIV2ZXFIZtwFc1uhYC+bZ0Sz2zF5b4EhuY6VrQdhObN8yaUhNPnvJSws0esXYMc7gfDQFXy64MaOCXucke3PlDBQ9RYumMKFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709647565; c=relaxed/simple;
	bh=cJ49zBK5d48/W7z8xFdgvqqwbdB27h55JR8miK8jZ9k=;
	h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject; b=AyGr0tkZLnQlB69WkAsass70tdokoNPzaF+akMhIB6dcjEx3cLT6CxUdwJZdr6fW5SKctfpoWZKRkoLRYxV/VNXgpMQILrHEBq+j/g4vwGsy9Lx/7ttob7GX+iZXeeGj2WJ1ogguTPhieiYYBa/tJByE/U6OXthaRYRGVvNEMK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=isovalent.com; spf=pass smtp.mailfrom=isovalent.com; dkim=pass (2048-bit key) header.d=isovalent.com header.i=@isovalent.com header.b=Fy2VvOUn; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=isovalent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isovalent.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=isovalent.com header.i=@isovalent.com header.b="Fy2VvOUn"
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-512e4f4e463so6287278e87.1
        for <keys@linux.kernel.org>; Tue, 05 Mar 2024 06:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent.com; s=google; t=1709647559; x=1710252359; darn=linux.kernel.org;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cJ49zBK5d48/W7z8xFdgvqqwbdB27h55JR8miK8jZ9k=;
        b=Fy2VvOUnfpNigq21LW7F1clPJA37BxigZ1z+gYnt5htUihska61S8uTfnbcVb4OU+x
         Jf3b7d6kbDZQ7VBFgz8NyXLkhEltnlbkMVAHcSyMGoSAamwyEUaYjXAmxMwv/THDZYmb
         5GfVJzNGuO17QC299KiWX2R/2ub5f61BdXKhvHczbzaYLos8wXTPUzxiQmV+EMdhDpyE
         AOpeqknZFANNR8QwW8fM1G2cNqAko/Ac9bMzi84nXQs4KCbLj9k+29xmrPTvunB3OKdf
         UcdT3ac1NqsrPD/tmlxsScxzIffQjCkO0Y6WaJyClpfyZx8K5Hl+vTvOqQt6G6QGKxZs
         M6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709647559; x=1710252359;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJ49zBK5d48/W7z8xFdgvqqwbdB27h55JR8miK8jZ9k=;
        b=ApeMpCQA1R1NRgXu9FqZNeDsOVU7G1INecTVZo+bPtOjQNs2DUvTi/HBvKVCPwJSMy
         giz1FjwFFvks/CGGlsFYYXA8i8YALdDz/1rSrDt8NDpwaV1mH9CLaeu7aq/hKC25KgdS
         gWWO1m8rKsR7Jw5CQHEtl+9P/wfh6NSQqCZ3E3DIp3Dvig62yEjc/xztj6O0gkkTQ00n
         rSeop5vt+ediXWssvJZsIlKWsFXJAnFtXLITv7zl4892NI5pjcD2Ylui7Z/4qOnR18bd
         91Yps4qIUf1QyGk4aR+9vszMtwYiazKLkQhJFR71u3f+6vKdHby9i/VmWpPh65jA8n3a
         A4yQ==
X-Gm-Message-State: AOJu0YzJ2cVudfHhamPznd27isy7PnYt8Q6haiUxjHDlWWmWaEOEnK0Q
	VO4G2fnPQD3vcinImVjE/SxKcfSL7gR3vbKvxt1qvl5RpFEFBAUuhO9o7QS0FqxsQwN4wiY1fGV
	TVpc=
X-Google-Smtp-Source: AGHT+IGvJi64gZnIYYCalYJLdMinOw9KAc3IzsZ7TCzz/9Ta8XxsZsLD0JbLQ4MUJ8FrNEcdINrVbg==
X-Received: by 2002:a05:6512:3054:b0:513:1e8a:f1a5 with SMTP id b20-20020a056512305400b005131e8af1a5mr1949956lfb.5.1709647559021;
        Tue, 05 Mar 2024 06:05:59 -0800 (PST)
Received: from ?IPV6:2a02:8011:e80c:0:7312:bd04:dac0:d180? ([2a02:8011:e80c:0:7312:bd04:dac0:d180])
        by smtp.gmail.com with ESMTPSA id q11-20020a05600c46cb00b00412b4dca795sm18243478wmo.7.2024.03.05.06.05.58
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 06:05:58 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------hfAOLW3JM60MZgTeprixv430"
Message-ID: <6e999fa6-8bb6-42aa-b2f5-fce1e1c6932a@isovalent.com>
Date: Tue, 5 Mar 2024 14:05:58 +0000
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: keys@linux.kernel.org
Content-Language: en-GB
From: Quentin Monnet <quentin@isovalent.com>
Subject: Key for Quentin Monnet

This is a multi-part message in MIME format.
--------------hfAOLW3JM60MZgTeprixv430
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello, I would like to have my key added to the keyring, please.
--------------hfAOLW3JM60MZgTeprixv430
Content-Type: text/plain; charset=UTF-8; name="export.asc"
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FWWhBWDBCWUpLd1lC
QkFIYVJ3OEJBUWRBNXlHYTU3STJiQWM0My9ZcG04eFlQSldMNWRGT205VHUzdVlRCkhIT1J5
VHUwTWxGMVpXNTBhVzRnVFc5dWJtVjBJQ2hKYzI5MllXeGxiblFwSUR4eGRXVnVkR2x1UUds
emIzWmgKYkdWdWRDNWpiMjAraUk0RUV4WUtBRFlXSVFSS1RmMVI2MmV5eC82ZmJsSUZmZWNn
TUJ3SnRnVUNZaEFYMEFJYgpBUVFMQ1FnSEJCVUtDUWdGRmdJREFRQUNIZ0VDRjRBQUNna1FC
WDNuSURBY0NiYmo5d0QrS2hCcnZuYkNWcy9UClA5eVNRSCtZSlJoSlBWdnJJcml6OG5Db1Vz
RmUwVDRBL2lNL1pqangwT2hscEdKSHJvbHZXREFhOER1ZGFabUUKcVFVeUVNWGJEbjBEaVFJ
ekJCQUJDQUFkRmlFRXA1NW1NbFh0Z2Zwa3kzTnE5bXBSSUZZSGV6MEZBbVhVYnZnQQpDZ2tR
OW1wUklGWUhlejFWL0JBQTFnZmFiUHRlTTZwamZwZERqaDFhSkZsY0FUUWs0aXFpY1dibVp0
SWhJcmpnCnh4VGN1TzVrZmo3RkhuSEtORTl3Vjg2NW5JSjFKdStRVlE5VDRJUFhqWkJDaEsy
VUYxb3hoandBYVhPeThlcEwKNkpJcEszUkpTb2tLbDJFTG45WndrV2pDbXppN3dZbWlPb2VD
TXErVk1OQUpmbFlMcVNmYUlaL2h6dmhUWjMrUgpEcHc3SkhBRXhWWUpGdjQwbzhwWEtCOGxl
OU1KWlVaYVNHWFVpZUlWMlMwREFUWDhlRGVUcDhvSlg1akphQmpECjVRcytOaW5wN1FvQkkr
am8yck9EU213dUZITzB2ejZXMHpQdEhmRS9QMEVCT1R4bzRnbVloUCtTUWg1NW1BUDQKNGxw
Sk1DS1FtWHBFODVoTlQvR3dRSlJ1anFVbGxmdGk3ZE0zY0JFMlA4eEplRi8vdVBubGFVM29X
TkVBWWo2SQoxVDBsUFpQdmtTL3gxVnlqQ2Z2T3hVeUJrVUxMWG1GdUkwdGFaMFpqcEo0QmtO
cjFqV3dCOUR1UTZJTUVSWHhlCmZSb3VJV2xEN05GUDFUR2FLZ05SVlZUL1pkR3V1OElEOW8x
QWhCZkJSRVZIUXpEM3FXaEcwbzNRNDlxUW5RSjEKVGJ2c0VldS9mUjA3bHFHdHlEaTIvZi9D
VVQ4R1ZMWHZwdVp3N2UrY3d4U2pxVEtadWlaVVJWYkZzQjZZT2UvaQo4NFBOT0ZPNXpQcDRN
Y2E5Z0g1RGZSSk9RMkNDampSM1gxckZEaVhSeXNoWnFnWVhxdU0wbVZEd1FVQUJKa1dqCjJJ
c0hVdFIwQm1VVXRmWkJ3eklNdzlZbU9CdjlpaFA5R09NbCtEV0F6cWhVaVZlQXNDNEszaEFY
OHNXUkdrS0oKQWpNRUVBRUlBQjBXSVFUcU04RDRqVzZDWWdFRGlGY3hSbTF0L2xJaXV3VUNa
ZFRwY1FBS0NSQXhSbTF0L2xJaQp1MUEzRUFDTGhzYlorUnNOUFozS29ib0h0bDZOTjYxbElN
NGR2VkVTNjB6OHl0dFRPNFo0MEZnZkRST0RPK0lYClZteEM4N3hkWWxGZndDYU1OMm5TTlcy
Z2dlMlNEUTlxOGtmcUhZTWZ1SVZaSUFvUUpaS25vWlFuaXNzVXNaaWQKOFEzZHgySW5ZeGFQ
RjkvZTdvZ1QxWHo2T3lnTWhkV0xTVDRrb1ZHRE85aGlZU29pMnUySUZVZUR5SUxwM0lWZwpP
TW4xcTExQmVidHRCKzZvSHFGbWVkU0w4RUFTYndSY28xMDAvenVsSVAxejIvU0FtQkNNUTJn
SXYrQ3ZzTXFtCmROVXorSkdGbDlzQ1BUT3NoV2srQTAwa1hHeWVCaFJXa2cvcldjbU1lZEpK
K2JlbysxUHJ2amJZY1hHM3BZSlkKTGREeFB2MnM3NnZOT3ZuT2w4WDJCSmxhTFltYTAyRkRM
VU9IYXdoNmR1YXRhWjJNajlxSm16R1crTXM3bkJpZQpVZjYyNEVzMHhBZFIxRWM2b2VDYnM0
dGZ5K1ExTHlqWXZySEFScEw1T3lqRDFvRXRvU0NCdENVcnVETjMxRUloCkhlb3pPQlVMemtl
VTg0VjFvcUtXNFJodSs0N1lCY21nVEZ4ejhncmdWYzFVZWxGcGNSbEtJVENGTlBVK29XTzkK
dTlqZWcvWXpHeTAwQk9GSTN0Z0lxaVNOdW1wU2lFeFRTeUMycUxLeURnNU5aR0JwZEZxQmxJ
ZldKS0NPRWxaMAp4ZXo2Y3BPVGtiNTgxNXAya0JtV2J1NzJKV1AwLzhLTStkTTlDVG9DTG1Q
eG5vbzAyZ2w5Y3NrOWVmdnFWaDBaCmN4aitmdUw5NlFQMHh6T2pxYlIxcEs2V2RZQkwzVlVV
am5xOWl4UXZkRThvWCtpNkNZa0NNd1FRQVFvQUhSWWgKQkNyVWR0Q1RjWnlhcFYyaCs5M3pj
WS9qZnpsWEJRSmw0UW1qQUFvSkVOM3pjWS9qZnpsWE15c1AvMmpHN0IyawpjaG9OOEJlNUdK
cyt1NGFWM1lnbHRydCs3NDdaeHFLZE1BS3BFNFJQWGhVeGtOejVSN2J6SUpGSXdPWHI5WGht
CnhWQWltbGtpOExTMEt2ZnVkdFRxN3Yvc2F2QUVxcnV4VzdzY2hPWXA5SC9IS0FUQnlxWE90
OGRPNzlRUndwWlEKZFlPRjEvTjJEa0hMaHFZbWE4VEZEQXNTSmJvNWtSTXBVUUsrY0haeXVS
R2ZzRGg3dWRvVEhPdGY4WGVpZkRiQQpmS2FaVE9sc3BpUDA2ajhvZkV3UWd1SDZYYkh6dTRN
am4yY1N2Rndaejg0bGRLM2FIdmhjU1EwLy9jc1VLR25nCk1MWm9qbkNwWEc0NDF3dDdCbS9C
VVBsSUs1ZzRablQ1K1cyQk8waVkvTnhwSjRXRUt1eWYvZUkwWktJSHl3Ry8KY0lOMHhBakxM
bnlFRXN2aXlRa2lmWFI2d0hEdnE3T0VXUnNvckJxZ3Z1ZHhjQnd4OVVTVUIraStzNW5FVlZX
WQphU2VsTHR2bnlUVHdGaENIeGs1Q0JIMEZKS1pJcXRLWjFLWXNMdWtEZDVBSzJxOTlIY0pT
eXVSZVlxQlZLbmczCmZHak1McHdxTmVQbFd3eDlIbXozZng2RG0vN2dZZFhlREE3ZXVaVFRr
a2o1VXlBSk56L3BQOVFUZzRHbnVyQVAKRjU3NHMvSkdQeDNBcmtFSERyY3Z2Smo0NG5BZGtO
Y3pZeUdTWHplb1VoYi9iVHR0N0cyM0xmVmJZTkh4eUc1TgovQVJTU0xuRXcwUEhpZFhHUERQ
aW85Y0kyWFczYVRVdjdPOGNYd0x6Z3hjRzBBL3krUFQ2RExvRitxdzVLSlRpClRnL3k2aFUr
cUNIRnFmOW41MkdGazNMem1rSTBUc09wWlJqR2lRSXpCQkFCQ2dBZEZpRUU0bnpab2ZXc3d2
OUwKL25LRjE4OWthV28zVDc0RkFtWG0vVDRBQ2drUTE4OWthV28zVDc1Q2VRLytMcFZGYnll
Uk10Ny9HcWlWQTFtaApHNnpSb2hzcG1ERFl5R0NqRjVUdlFvT0JKeTBBcXh0ZjV4TmlsV0dx
Y1ZZR1Q2RkpXRjVmb0ZMWTJYalI2NTZUCm9hTXhiV01ySjJ0YlBkWlU4L3M0WGZ2a2ZIaThN
RHJwa0QzQ2ErbkRRSml4ZVUvNTJxbGZMQlF1WU4ydWdySHUKeHZLbEFlRWJYS3NCZS92ZEZ2
ZForVFZIQUlhd3dWNk8vbmtYNFdIeEF6LytPdFB2VTdxNDRkejZHc2NUV3F2ZAo5MHZiWXZ3
Vll3S3R1T3h4RldPT0FHdzgvQ0NvMXI4THZ3bDlyTGlnaGZicGo3TXlMWWxxSHlJZnErVzMy
aGlMCk9DU2lreXMyQjlxS2ZBanFFVUhsS2tIR2wwdU13N0dvSkViQWo0RnliTFNxQll0WHBZ
MjhEUlpaVXdQUjZMSlAKRUtXc3ZsV0JpVFIxNWcyT2I5cXZLVUNpTDV2TjdySzR6QngvZzdt
NjRWSU1wSWNMY1pQVzhRemFROWZOMlRhWAppNm1KeUdRZURvQXV4Q0EwQ2VEaWl2ZDdWWEMv
K1NKQW4rNU1YWlBwRVFVRkxxbUdWZFdwVkM2Snp3d2dLT1J1CmxzcisrTG1WK2l4b3A2OTVJ
WWpvZE94QzBUVW1VbDFwOGJaWG9kUGhuQXFJNWcvb0hhdVJNVTEvWWVjWko3elAKOEZscER0
YkYrb2tlQm1BR2JuYUJjdm56c01SZS8rUGx3M2dscGVDU2NTMW8xMFM1UW5KbFdQMWxad1R4
VUdSNgo4Z2wzWHY4d2R3TW9JaDVBRUdsbG9YNXBYQ0gzTmlkQjEvTzNMeVdPSUlsSlBkalN2
SXpHRmFjWk5tcE9XRlNUCjZiUGJxK29Xd0pGd2JaY2YwTHltYVVpNE13UmlFQmdWRmdrckJn
RUVBZHBIRHdFQkIwQ3VTN3dCZWNUYjJtRE4KS2xVQU9hWXNiWG1IcFZXd2FqWHlvVktnU1E1
Y3dZajFCQmdXQ2dBbUZpRUVTazM5VWV0bnNzZituMjVTQlgzbgpJREFjQ2JZRkFtSVFHQlVD
R3dJRkNRZUV6Z0FBZ1FrUUJYM25JREFjQ2JaMklBUVpGZ29BSFJZaEJLQ1poc0RhCkhBUFpC
aUdySTFraVNtcnRjbzExQlFKaUVCZ1ZBQW9KRUZraVNtcnRjbzExaW5jQS8wVFpmd3p5dXhG
UnYwVGkKamE3WUV4bFhJaWlQaDl0MmVkeGV0Yld3UDVwTEFRRDV0UGRCY0dFU0NReHRjek1t
TDZaOFFXa0tCb3lQNGNEZgpUZmQ5aXJyQkFDci9BUDk0akYxYXIxZlRzVE9QK012YUdFYjBl
aG9Xb0N6c0w4MEtMQ1VoSkVsQUJ3RDlGMHVhClJxWjkwYmlhaGVBT3JiMHdvaGlxakFzeHJJ
MlZTUEdRaDM5QnV3RzRPQVJpRUJnc0Vnb3JCZ0VFQVpkVkFRVUIKQVFkQWUxMnpoY256RzVv
UFF2SFkzMXZtclJmWVdhRFdpV1RDeDV2aSt5Tko4R0FEQVFnSGlIMEVHQllLQUNZVwpJUVJL
VGYxUjYyZXl4LzZmYmxJRmZlY2dNQndKdGdVQ1loQVlMQUliREFVSkI0VE9BQUFLQ1JBRmZl
Y2dNQndKCnRrTTRBUGRYOTUxUEg4OEl2MTlMbFYwSjcrUTErSm12MS92aXQ2aERISmhLaHhS
ZkFRQ1k2cUxDR1E5eXRwQmIKSGxjS0h2dE80NkwyY1lqSEtCNzdJNFNzV1NJQ0M3Z3pCR0lR
R0VjV0NTc0dBUVFCMmtjUEFRRUhRSGJLL1M2TgpZMTk2T3lCYm01UEtVSVdUT2lqZzlpQ2pr
d3pPV0E5TVhOVWdpSDRFR0JZS0FDWVdJUVJLVGYxUjYyZXl4LzZmCmJsSUZmZWNnTUJ3SnRn
VUNZaEFZUndJYklBVUpCNFRPQUFBS0NSQUZmZWNnTUJ3SnRsejZBUDlvNDJ1a1JHSWwKTCtk
S05EMUs2VDgwSUhGb3VKRnBOdDRuczJWSUF5ODdNd0VBNEo0a1Rjclk2aGEveVRvVGxMNjJi
R0Y2R1d2dQovUXcwTUJqMEpJd0FZUTg9Cj1ZekVMCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZ
IEJMT0NLLS0tLS0K

--------------hfAOLW3JM60MZgTeprixv430--
