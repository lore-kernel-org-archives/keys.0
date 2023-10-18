Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4E5630
	for <keys@linux.kernel.org>; Wed, 18 Oct 2023 00:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arvNXO9v"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23223C433C7
	for <keys@linux.kernel.org>; Wed, 18 Oct 2023 00:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697590634;
	bh=OzSMAklo+4IbsOD5hUEWJXwJw54lm7721D0ARnFOUGc=;
	h=Date:From:To:Subject:From;
	b=arvNXO9v15T1UW1Gm+AjBFYB4PKW9mn/e9bV/ffQtfKZtgB0ouBBpAayPvWwasseo
	 pJx2OtZ1eIOdOOtOltmtjwdDEFHN25Qq/zk4mHqNbUiv6eCIl6kBZvCxRKco5/IfBL
	 p9ZpIPY5vPjLMNSNKNrPHzvHTXLi3uk6GqsHabQG2PVIb29z3socAVpF1pt/EfwhiQ
	 tRtc9ioy5TD5K4jthN/4w5D0KTJZQZAE0RoBX8efvtnzJD21k/+vHreI3TyCYztjog
	 RDcWd7oIbMhOlghzgN+VQ0mngYVhXEWgxS7UgYNjjAzGLGhEOyzAXd3OndFL03JQsx
	 NwNU9xA474GiQ==
Date: Wed, 18 Oct 2023 08:57:05 +0800
From: Peter Chen <peter.chen@kernel.org>
To: keys@linux.kernel.org
Subject: Update GPG keyring
Message-ID: <20231018005705.GA1093375@nchen-desktop>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, I would like to update my keyring, thanks.

-- 

Thanks,
Peter Chen

--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="peter.chen.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
u05IJgRJTg7SruqqIkrzWtYH/JvXbaLLtf8=
=UoTg
-----END PGP PUBLIC KEY BLOCK-----

--bp/iNruPH9dso1Pn--
