Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101621A682B
	for <keys@linux.kernel.org>; Tue, 16 Jun 2026 15:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781623956; cv=none; b=hCWzLzzcfghh06gf1m3UPiGDysV+kA3pUesLU4wKV9lhbuKeAhwuckyD970KjNgzihZd8fdJ1ld9x8zkwn1Q+9dEsRYWuLMh0CCQpuOYzSG/HWvDSiOhwGXBb/+RhrPNiSuyPIhp0Uo3YqHywRW3HjqalYBw6Dz/imzsJxb7qww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781623956; c=relaxed/simple;
	bh=+S+2LQNGL/ief9hT/nLU/DgJdJ2F6kmQuZbzikRxbas=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NXIOmm6VEC5XDXN/p9yzbn5lid2sDiAWt9nVYJPCqUC0Ui00DH8nDHITFgzWyjIjDDxNRJfmekeyWSXeGeHENc+dXQ3LWvLsy2Sz7VpCnkyMICfqqlJl4jpTlp+ZUqwf43QmLXfJFaDVvRR0hj+lg7MPkWy9fTC2vA6slPFZw8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxlNll3b; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxlNll3b"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D3B61F000E9;
	Tue, 16 Jun 2026 15:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781623955;
	bh=+S+2LQNGL/ief9hT/nLU/DgJdJ2F6kmQuZbzikRxbas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mxlNll3b8HvJzn8iT811/7J1+aNu7MNdpsSdVITDOWeQ+DgesAgtKJ5BEGtVKCC4t
	 sOLlcGpZgCkqZBoT6Jwe9IhaJnyjYymLhY6MIQ1bGtam98nZrsvTrUXiGqJTOuLFmI
	 JPAICkjhH/0dOAM5Sq28qcMwbYp2fcMCnPchrXr1+c4DVBxf3VZwHYYevDarUspIhi
	 vpefTO7iI9PSlt7s9wwSJEKG3ghjrnSDeqcZVSBPM48CxoaLPTfjnEFri8eyAVaeZa
	 UZfgCL6scdJfByswyICilWindNsRNzmzLDd5REdGF1uR8iZ5Ssia7rt5CwSt9X4Xxk
	 BTZlJQGg9/nhQ==
Date: Tue, 16 Jun 2026 11:32:34 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Drew Fustini <fustini@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Drew Fustini
Message-ID: <20260616-condor-of-eminent-certainty-4a0e87@meerkat>
References: <ajFbWReVLdKQUDl1@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ajFbWReVLdKQUDl1@x1>

On Tue, Jun 16, 2026 at 07:19:05AM -0700, Drew Fustini wrote:
> Hi, I have attached my updated GPG key.

Updated, thanks.
