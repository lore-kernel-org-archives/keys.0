Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A13E202F70
	for <keys@linux.kernel.org>; Thu,  2 Oct 2025 20:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759435989; cv=none; b=fCIKS9dbmvSD3NtTZYb6vm/Waqds69G3pj1o0SyCybXJHS1Rci3N7lYF72+R4S7QwVN+50Hd7Do7rh4s9eMDtKGIFxh6bCLly+NRXNNPa3thUj8Cxj818x6JkUTGlUEwdDLNgO9lKGYJAX4rbeMmxsa0htwkymNT9FcgC9KqUOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759435989; c=relaxed/simple;
	bh=7nkkU02CaPXZZ0XlBmRPNtl5jUCS3wG6wK20V/sopwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lrVMyWdsGLmYi8wwdVYtt/DxfD5A1GejfrEatok/M1SH1xyyHBF8c1qdryu+oHtRXcVDv9cUp5cskDbMJxyX6M6gDg8JdaOwJH6StuuaylajtdYozRRa8Zte1WmoIASbcJo/vJj1vsZfUtV80JAIyHZKu5MQefzeP6gEUvLGW4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=2Hqhhuf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="2Hqhhuf7"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340E3C4CEF4;
	Thu,  2 Oct 2025 20:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1759435987;
	bh=7nkkU02CaPXZZ0XlBmRPNtl5jUCS3wG6wK20V/sopwg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2Hqhhuf7dw9bSfCXESPj7j1ZM47dy9c91dyaRtodYhAARu8OJ683dhS0j7fq6AivA
	 ivd18IZbtNOnZ57uFdbPSM2KSSze6la6fReyQq5vYqJXVGknQSSTB9+CpRzVdQdd83
	 w0FiQjrlGPVFEHu0vvpiibakBLFrJWSHF/YE+Y0w=
Date: Thu, 2 Oct 2025 16:13:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated subkey for A6CD9F096F642CB3
Message-ID: <20251002-imperial-silent-oxpecker-04b9e3@lemur>
References: <20251001213254ec684fd1@mail.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251001213254ec684fd1@mail.local>

On Wed, Oct 01, 2025 at 11:32:54PM +0200, Alexandre Belloni wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
