Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA221649D3
	for <keys@linux.kernel.org>; Tue,  7 May 2024 16:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715097642; cv=none; b=UMwiSNXwMJkLo9d6+JHGN3SflJ599bcwb01qbHR9JUFP+78uuYSCjYn2lJUaFgKzZMK4SRLbB39Tp6qpBGTw55sEepZAuX/ssVOQ9+9ieJxhk8mRX9caNxC+3OJq8UUaRhB6bf9l02TTOM54WZG1ae9q7JdTnfHn8zl67wx7/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715097642; c=relaxed/simple;
	bh=i6032qOzPmJyQ0BNqSOdJ7kG5G2IuHAfiasbKouRJEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JDmvWOfB+n4IQ3L0LHMj8XCfUCNHgDXGYlfAZ3Ntji0SCMWOMeBf048oyIqYVAn/EBv+lbmRsaaJ+B0rqd/8Fn56qSA7JHW3QzZaZOQyddNf9dT+ZeQyqDY3ftYRAYi2o0U4bGHXTavR12jz9PofgP3riKZv59V1VrNfQmwQEZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=2iSQreur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="2iSQreur"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2984BC2BBFC;
	Tue,  7 May 2024 16:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1715097642;
	bh=i6032qOzPmJyQ0BNqSOdJ7kG5G2IuHAfiasbKouRJEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2iSQreurv9dZ0vrEhtzPxiwZPYJeArktIwy3JMCvRuw8r18YbGI53Q2oltWEiy5Yr
	 6CPihnPG+NqP+Wd4QAGPqP6SwufluKg8GfQOANLyxxzsi3EuPKSVyhxCC+X41LKiRp
	 pNBfxPmdU9XmohpS3iYiyKFtxAfaKhH8BW6gJKvU=
Date: Tue, 7 May 2024 12:00:41 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uladzislau Rezki <urezki@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Please add my key
Message-ID: <20240507-classic-elated-beluga-a3cfaf@lemur>
References: <Zjim8wnUYbb4S8HG@pc636>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zjim8wnUYbb4S8HG@pc636>

On Mon, May 06, 2024 at 11:46:27AM GMT, Uladzislau Rezki wrote:
> 
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added.

-K
