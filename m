Received: from sonic310-15.consmr.mail.bf2.yahoo.com (sonic310-15.consmr.mail.bf2.yahoo.com [74.6.135.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F0FA35
	for <keys@linux.kernel.org>; Fri, 13 Dec 2024 02:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.135.125
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734056221; cv=none; b=WfQ+6jIMtrc64MKLv3hDeS1JJeh9kWR1rh0xYHJMZO+fZt+3Q6Kagj1FTP/QmHkTHXpc3RV4voQ4s6xBmDNGe6Ihn2mBG3QSRcPYBmzcC+9hOG34ms8r7qPWbpR+sOTxGl3d4xfPjP4hNSxbXeUPPdt/CW4GkD+VNE/DwbiDOGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734056221; c=relaxed/simple;
	bh=jknIyhSRv6uCaS88fj2MVHmgijmMBb3fyU1fOgoLlm0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l9O5Q1czEXol99BS4WxxZ3/xQQa8PXkVnNwyXqRmFHSrOuC+xogxAim/G2MiQdvqb/diEEKWFC2x/15+4166+oRXuSa7mz0z2vgNKC5PmCiENNsX6ktWHJw3LMbNQ4yfDIUPKXrygOsihIFcZ64VM71cnelHFKPFB6jwnpG87yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net; spf=pass smtp.mailfrom=verizon.net; dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b=AzGY0rIH; arc=none smtp.client-ip=74.6.135.125
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=verizon.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b="AzGY0rIH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1734056213; bh=4201ADeu5FFgHX/mvl6h9TVmSaZnZPgOdo658Zlyjuw=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=AzGY0rIH1+lR9a69nZDbIQNVRwXo7EVOj7peMiVMy2waSUsGx4SrTwUzk1KOKO2EnNV9tMxpZNoqj1496Os0YuE40yvZZ+0gFuZVA/0gYsNBkD6hfw466C93aa02qRzsZAtY/k6eExWG84YQIfqmukynRlYBw81szoXwJtmd4Rm5Q2aW74bjKNX1EnIxWRZaZbhxwDRJTNqlzU3PsNvH0xyeFJFSTUkxUv0Y0P5WO861yjVLyWIgCvCAVSFjbqruoS2CyL1L0JsSBGtdlNjtJHpJKsowaEiB1us3phSyR7ICh4DPGZ7Szg8KjpTWAkeiPbKpj2EjJVXUB+r9XsHT/Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1734056213; bh=Gsuu7j4/K6Ecm74gZE/uw68BV2mpdoKr4rJNKO6Sq6m=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=pP2Z3xGQYAmkojLOz52xjVsHTvBfSGf0ZLHCTEfJ2uV/2cwKx1m5Z9/uCZ3tjLiRVRINhaWkE0HEJN+Xp/D+ICb+VCzroPlRQyLmibNyBVe3wFepXIo0nANwYWK09w7SHI96fQoYiCEwCxAcXwDkdEYvLwB2fBcSgHeEya0D+9m5o9pemvhG0+75djPm/3uI1EZ2IMiAi6/hEbnt3dH5w+Eq/7kM3hjq8aTgiJ8rlcik5QrzTfehpJKSR0sjTwoOIevYPSgA6UO6ldGdqvtVQN73rzE9RQBt+ytp54DK9RWNY2+0Nxt9t6Q6qpMg44Z0mcjxaLuRlwbPDJ8xg5ehDQ==
X-YMail-OSG: hyGL5F4VM1mK.KYRoxb8XjWWpkb6semaLTQHE3GIByNips4ykvCoPWMHS0hb.1M
 prIDfrZZDpyvnTgHPoTO9ggRLT98auss13qJUbHpZOtFGIPNbHcHqwNn7SEpUT7Ao_EAjK_Hjd.O
 tykm2aPPHfNrwBldeuHGbh7MzbCzC98hNoysrNNUz2NcJk0FMLcHU8qafqIGBTqOsvSXB7SZnJAA
 PHF8zy_azNtn6RQBGBXzyNQMTClK1vR92qOdBS7_sbVGmjdm6RHfjz1sifMerknCRrJk4ZAnvDfb
 kBQBhJ7jQrC6.dC1Lc5DjGHQMgNf.wpeZbSfHOzbiVLLOTUYoJpMX165J6uynXDCQwchof7se0OH
 ZYpFxLQB7IT8m_EtrS41vcf2y5UfsbSdCwj6DZKjnfNVEQgKhpElrQ_OKT14v0jDbUdUAxwcAdrw
 kn3f_7QO9C98XoyL4rg0A1rjFGPYnA32UOm0a1iyUY02kjPDnxc.9railYjpjr6K6c21sa87oK5J
 8HlMr6vb0tMjZuqULYlZ3Vv_WRQfL2tHz5W1kBUOZIQpmXDDJjfdFiAk9OCNetrDTt92Wvl6h2hS
 1vQWV5VRygkUNnN5A48EpnyWK8xaYMxkb.qXYz3N279GwZJm1uOiiBO5SPZ1K4PENiSkb1eSY5GJ
 _mOxjdw9utS1gZOCn0QWbsZmKsNdw2f.OhDlMnmD5ftoDRBNN23Mb3a8nSTKsBa7gqagOobm8Isv
 lGN6KXXD5hLvErlx63sAMSMO3XsXMcnCfvIgfHTrJwaFO7PM.Om_ZGZYMKWrfGAWntJw3NP2ThGh
 9OUQzhDk.OK_VoEb5P2SWvegIex1iioO8x.LclIsZdHWoJR7XG1LhYaxa1g3QE.c.2inqnJ2gQgN
 KPzX.30uvKi14jqQY353aRy17ItfpS2JGtg4fqc6Fs_5QxH8CdbJjFeKXItXtZKkeoYs_fkkX97W
 D5rgt.66L2zCa7IZ9aezoViXqlB2yHzfMA9ZF8nKyzWirLIZmbB8l50sEY8uG1d_HnTQcNXVJp3S
 8.8vR42vjz4NkMSupcJ3SPYvq4sf4gSRWgGsAZPBDW9D0uMZ9iXSXYZAsRk8Xp7F1eoufvWLANdi
 OzfqJWHRA2uUqTwpxG3B9.gXy_xjKKKba0UZ7jr7cEGLG2tXd2hJo22RmGG13aNUI1AR.exnd91Z
 f.tqtBRyS7BmmbOawQPueBWAZW2syk0HsMD8QdwTDOVAHqvY.AiumfcuzsvtD6QDByO52h6KXllf
 hjlYzq_Ea_A3Eeh8K7IBRno2weR5TAOQpNyy8Ihi6JPegvgI_WiMPw0_7ZJTUXoGn_v0pKfUy2GI
 gRSm9Y6w3w_nIxoiGbdmCBpETjs82a6yAn_zRDifiv9P0.uZONYmAankLR_zBjb2VVSn1yLYF1pZ
 Pi45QOuqTp9A0hyAahMjMK_GHsP8hyFEMyE0EuIVgKBxowxHnQXfyJvzfpN07aOS22RELu3_eBNK
 NCs83qQRv4h7_NdL3GAZnYT0DrcZOv6B405FbdvIcKef.VOEgiPESEmumT6yRV311.kO8h8WM2Ak
 cq2tH43mhDyUDJli_tyCH2cg.AADPTzA6rnJUD1PgsJiOBmgeR8c.jOvNSp0v3j.ewMgCFTjDxBs
 1l9OW6yFSigow8ryHby.n0CKbNk_rOm0vbiYswejLf4n7BMoAvtwdmBX7NQ5uBKv8YTGQctfvQI9
 a0WY06yx7eawRfD2OPYWn1ZaYzgh701TTNsyA2gR_rQCQmnfa1E4PQTtQdprDNLbBVjFINFbXg1V
 Q4p4577tw_P_BqQLQzfuuo47iU5CEt_0lePwypUeRkQ.HWqm9cVy0CYZKMXvmxfwShfmx1MVb7fq
 miedcvgR8EV2aVeRaihhRnkOCpQzb3gjXW4lDEumO_PT3kJCP97xEopmqspLzesW07fm2mxK7Ft0
 WMNPds5frUJxasmUKJqyzLbJiyMeFXHXFKT6xHs5TjBSxOAC3CHEo9_Bw4bG7mc5LEAIgSwWQiBh
 _gG2QsDbtaf1voAoLwaV9khVtgBltfj1Qc0gyZJGtxy6k.kD2EnXENVGCMhKIp1u6qP8LagjSdcp
 w0cTYS1g0hnSt5nbCjDrEA59.5xXjOZg.gzJGfHGpLh0C09NAjNq66czUaFyU3ynY2xneQCU5Edv
 syiHbnT11Bg123O6F648E_uTlw8zCJmuVX8MnSPJcd5jzLXGf4g4uXsrbsOrukYVFuPmj6H3tzWO
 HXe_CQMOzNvfMFD4e8KGf3GuBqlh9rDVdNG3QxVESZAnpu60AidiALtLu_w--
X-Sonic-MF: <bluescreen_avenger@verizon.net>
X-Sonic-ID: 9a8dc700-862f-46ad-9dbc-e9881a99e1f2
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Fri, 13 Dec 2024 02:16:53 +0000
Received: by hermes--production-bf1-66bb576cbb-rdxw6 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 3276c148d0a70fcc23162da2cd6a27b2;
          Fri, 13 Dec 2024 01:56:36 +0000 (UTC)
From: n3rdopolis <bluescreen_avenger@verizon.net>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: Submitting a key
Date: Thu, 12 Dec 2024 20:56:36 -0500
Message-ID: <3223611.fEcJ0Lxnt5@nerdopolis2>
In-Reply-To: <h6774iiiea2fpejxfhfhrdd7gz4uzzr7cpzwqdvi3a7w7iryia@xqqhraoatf52>
References: <5341712.6fTUFtlzNn.ref@nerdopolis2> <5341712.6fTUFtlzNn@nerdopolis2>
 <h6774iiiea2fpejxfhfhrdd7gz4uzzr7cpzwqdvi3a7w7iryia@xqqhraoatf52>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Mailer: WebService/1.1.23040 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol

On Thursday, December 12, 2024 10:02:37 AM EST Konstantin Ryabitsev wrote:
> On Wed, Dec 11, 2024 at 07:29:46PM -0500, nerdopolis wrote:
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> 
> There are no signatures on your key, so at this time we cannot accept it into
> the keyring. Please get a signature from at least one other person already in
> the keyring and resubmit.
> 
> -K
> 

Understood. Do I just ask around for someone willing to sign my key?
I am sorry I am not familiar with the process

Thanks


